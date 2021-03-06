#! /bin/bash

sudo apt-get remove docker docker-engine docker.io containerd runc -y
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common -y
sudo apt install docker.io docker-compose -y
apt install zsh -y
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
chsh -s $(which zsh)
git clone git@github.com:lukhaza/simple-angular-ui.git
git clone git@github.com:lukhaza/simple-nestjs-api.git
cd simple-angular-ui && npm install
cd ../simple-nestjs-api && npm install