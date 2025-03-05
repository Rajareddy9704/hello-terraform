#!/bin/bash
sudo yum update -y
sudo yum install -y java-1.8.0-openjdk
cd /opt
wget https://downloads.apache.org/tomcat/tomcat-9/v9.0.71/bin/apache-tomcat-9.0.71.tar.gz
tar xzvf apache-tomcat-9.0.71.tar.gz
mv apache-tomcat-9.0.71 tomcat
cd tomcat/bin
chmod +x *.sh
./startup.sh
