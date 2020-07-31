#!/bin/bash

# fail execution on error
set -e

# add docker repository
sudo apt update
sudo apt install apt-transport-https ca-certificates curl software-properties-common cifs-utils yum -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
sudo apt update

# install docker
apt install docker-ce bridge-utils curl openssh-server unzip httpie socat -y

# enable swap with 4gb
sudo fallocate -l 4G /swapfile
sudo chmod 600 /swapfile
sudo mkswap /swapfile
sudo swapon /swapfile
free -m
echo "/swapfile   none    swap    sw    0   0" >> /etc/fstab

# micro - text editor https://github.com/zyedidia/micro
echo "Installing micro - text editor..."
MICRO_VERSION=1.4.1
wget https://github.com/zyedidia/micro/releases/download/v${MICRO_VERSION}/micro-${MICRO_VERSION}-linux64.tar.gz
tar -xvf micro-${MICRO_VERSION}-linux64.tar.gz
cp micro-${MICRO_VERSION}/micro /bin
rm -rf ./micro-${MICRO_VERSION}

# docker-compose
echo "Installing docker-compose..."
sudo curl -L "https://github.com/docker/compose/releases/download/1.24.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

echo "Creating zsh aliases..."
echo "\nalias d='docker'" >> $HOME/.zshrc
echo "\nalias k='kubectl'" >> $HOME/.zshrc

echo "Disable ubuntu telemetry and ssh login news..."

sudo sed -i "s/ENABLED=1/ENABLED=0/g" /etc/default/motd-news
sudo apt purge -y ubuntu-report popularity-contest apport whoopsie
rm -rf /etc/update-motd.d
mkdir /etc/update-motd.d
sudo systemctl stop motd-news
sudo systemctl disable motd-news

echo "### DONE "###"
