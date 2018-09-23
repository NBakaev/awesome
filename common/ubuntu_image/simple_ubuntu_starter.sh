#!/bin/bash

# fail execution on error
set -e

# add docker repository
sudo apt update
sudo apt install apt-transport-https ca-certificates curl software-properties-common -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
sudo apt update

# install docker & dnsmasq
apt install docker-ce bridge-utils dnsmasq curl openssh-server unzip httpie socat -y

# enable swap with 4gb
sudo fallocate -l 4G /swapfile
sudo chmod 600 /swapfile
sudo mkswap /swapfile
sudo swapon /swapfile
free -m
echo "/swapfile   none    swap    sw    0   0" >> /etc/fstab

# micro - text editor https://github.com/zyedidia/micro
EXPORT MICRO_VERSION=1.4.1
wget https://github.com/zyedidia/micro/releases/download/v${MICRO_VERSION}/micro-${MICRO_VERSION}-linux64.tar.gz
tar -xvf micro-${MICRO_VERSION}-linux64.tar.gz
cp micro-${MICRO_VERSION}/micro /bin
rm -rm ./micro-${MICRO_VERSION}

echo "### DONE "###"
