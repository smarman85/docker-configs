#!/bin/bash
# Set prompt to red
sudo echo "PS1='\[\e[0;31m\][\u@\h\[\e[m\] \W\[\e[m\] \[\e[0;31m\]]\$\[\e[m\] \[\e[1;37m\]'" > /etc/profile.d/prompt.sh
# set welcome message
printf ":::::::::::::::::::::::::::::::::::::::::::::::::
::::::::::::::::::: Test VM :::::::::::::::::::::
::::::::::: Feel free to fuck it up :::::::::::::
:::::::::::::::::::::::::::::::::::::::::::::::::
" > /etc/motd
# install docker
sudo hostnamectl set-hostname 'Centos7LRG'
sudo yum remove docker docker-common docker-selinux docker-engine
sudo yum install -y yum-utils device-mapper-persistent-data lvm2 git
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
sudo yum-config-manager --enable docker-ce-edge
sudo yum-config-manager --enable docker-ce-test
sudo yum-config-manager --disable docker-ce-edge
sudo yum -y install docker-ce
# start docker service
sudo systemctl start docker
# ad user/group to be able to run docker 
sudo groupadd docker
sudo gpasswd -a vagrant docker
sudo curl -L https://github.com/docker/compose/releases/download/1.18.0/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
