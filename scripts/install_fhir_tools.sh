#!/bin/bash
echo "##### Installing Java"
sudo apt install openjdk-17-jre-headless -y

echo "##### Installing Sushi"
sudo npm install -g fsh-sushi

echo "##### Installing dotnet-sdk-3.1"
wget https://packages.microsoft.com/config/ubuntu/20.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb
rm packages-microsoft-prod.deb
sudo apt-get update; \
  sudo apt-get install -y apt-transport-https && \
  sudo apt-get update && \
  sudo apt-get install -y dotnet-sdk-3.1

echo "##### Installing firely.terminal"
sudo dotnet tool install --global firely.terminal --version 2.5.0-beta-7

echo "##### Installing yq yaml-parser"
sudo snap install yq

echo "##### Installing rename"
sudo apt install rename
