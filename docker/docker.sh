#!/bin/bash

sleep 2
#echo -e "\n######  Docker Cleanup   ######"
#brew uninstall --force docker docker-compose
#sudo rm -rf /usr/local/var/lib/docker
#sudo rm -rf /usr/local/var/run/docker.sock

sleep 2
echo -e "\n###### Docker Installation ######"
brew install docker

sleep 2
echo -e "\n###### Docker Compose ######"
brew install docker-compose

sleep 2
echo -e "\n###### Docker User Permissions ######"
sudo dscl . append /Groups/docker GroupMembership $USER

sleep 2
echo -e "\n###### Docker Bash Completion ######"
brew install bash-completion

sleep 2
echo -e "\n###### Docker Pulling Images ######"
docker pull hello-world
docker pull nginx
docker pull httpd
docker pull mysql
docker pull mongo
docker pull ubuntu
docker pull centos

#echo -e "\n###### Docker Login ######"
#docker login
