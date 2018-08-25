#!/bin/bash

# fail execution on error
set -e

# add docker repository
sudo apt update
sudo apt install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
sudo apt update
sudo apt install docker-ce

# install docker & dnsmasq
apt-get install bridge-utils dnsmasq curl openssh-server unzip httpie socat -y

# enable swap with 4gb
sudo fallocate -l 4G /swapfile
sudo chmod 600 /swapfile
sudo mkswap /swapfile
sudo swapon /swapfile
free -m
echo "/swapfile   none    swap    sw    0   0" >> /etc/fstab
