#!/bin/bash

# fail execution on error
set -e

# NOTE: CHANGE IN `consul-docker.conf` IP of consul server
# consul.server.local - this is DNS resolving IP of main consul server

# newrelic license key
VARS_NEWRELIC=INSERT_KEY_HERE

# upgrade dist
apt-get update
apt-get dist-upgrade -y --force-yes

# add docker repository
apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
echo deb https://apt.dockerproject.org/repo ubuntu-xenial main >> /etc/apt/sources.list.d/docker.list
apt-get update

# install docker & dnsmasq
apt-get install docker-engine bridge-utils dnsmasq unzip openssh-server -y

# run DNS server (consul - service discovery)
docker run -p 8400:8400 -p 8500:8500 -p 8600:53/udp -d --net=host gliderlabs/consul agent -data-dir /tmp/consul -join consul.server.local

# use local started consul agent as dns server
# to resolve mongodb.service.consul for example
# and service discovery
# then consul can be access through dns name `consul.service.consul`
echo "server=/consul/127.0.0.1#8600" > /etc/dnsmasq.d/10-consul
service dnsmasq restart

# install newrelic server monitoring
echo deb http://apt.newrelic.com/debian/ newrelic non-free >> /etc/apt/sources.list.d/newrelic.list
wget -O- https://download.newrelic.com/548C16BF.gpg | apt-key add -
apt-get update && apt-get install newrelic-sysmond -y
nrsysmond-config --set license_key=$INSERT_KEY_HERE
/etc/init.d/newrelic-sysmond start

# add ssh keys to allow all hosts connect to each other
cp -R .ssh /root
chmod -R 600 /root/.ssh

# enable swap with 5gb
sudo fallocate -l 5G /swapfile
sudo chmod 600 /swapfile
sudo mkswap /swapfile
sudo swapon /swapfile
free -m
echo "/swapfile   none    swap    sw    0   0" >> /etc/fstab

# start docker consul agent after system start
# (https://docs.docker.com/articles/host_integration/)
cp ./consul-docker.conf /etc/init/
