#!/usr/bin/env bash

#Add Docker Repositories
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
#Update and house keeping
echo "Update Repositories"
apt-get update -y
echo "Upgrading"
apt-get upgrade -y
echo "remove old stuff"
apt-get autoremove -y

#Install My prefered apps

if ! [ -f /usr/bin/nmap ]; then
  apt-get install -y nmap
  echo "Installing nmap\n"

fi
apt-get install -y vim
apt-get install -y mlocate

#Install Docker
apt-get install -y docker-ce docker-ce-cli containerd.io
