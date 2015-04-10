#!/usr/bin/env bash

wget --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u40-b26/jdk-8u40-linux-x64.tar.gz
sudo mkdir /opt/jdk
sudo tar -xzf jdk-8u40-linux-x64.tar.gz -C /opt/jdk

sudo update-alternatives --install /usr/bin/java java /opt/jdk/jdk1.8.0_40/bin/java 100
sudo update-alternatives --install /usr/bin/javac javac /opt/jdk/jdk1.8.0_40/bin/javac 100

