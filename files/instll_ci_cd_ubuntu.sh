#! /bin/bash

### Update repos
apt-get update -y

### Install tools for docker
apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common

### Added GPG Key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

### Add docker repo
add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

### Update repos 
apt-get update -y

### Install Docker
apt-get install -y docker-ce docker-ce-cli containerd.io



### Run Docker server
systemctl start docker

### Added docker to autostart
systemctl enable docker

### Install Jenkins
apt install -y openjdk-8-jdk

wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key | sudo apt-key add -
sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
apt update -y
apt install -y jenkins
systemctl start jenkins
systemctl enable jenkins


