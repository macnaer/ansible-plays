#! /bin/bash

dnf -y install java-1.8.0-openjdk-devel

yum -y install wget
wget http://pkg.jenkins-ci.org/redhat-stable/jenkins.repo -O /etc/yum.repos.d/jenkins.repo
rpm --import https://pkg.jenkins.io/redhat/jenkins.io.key

yum -y install jenkins

systemctl start jenkins
systemctl enable jenkins
