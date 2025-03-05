#!/bin/bash
sudo apt update -y
sudo apt install -y openjdk-11-jdk

# Install Tomcat
TOMCAT_VERSION=9.0.80
wget https://downloads.apache.org/tomcat/tomcat-9/v$TOMCAT_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz
sudo tar -xvzf apache-tomcat-$TOMCAT_VERSION.tar.gz -C /opt/
sudo mv /opt/apache-tomcat-$TOMCAT_VERSION /opt/tomcat
sudo chmod +x /opt/tomcat/bin/*.sh

# Start Tomcat
sudo /opt/tomcat/bin/startup.sh
