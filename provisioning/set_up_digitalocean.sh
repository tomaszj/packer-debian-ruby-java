#!/usr/bin/env bash

groupadd admin
adduser --quiet --disabled-password -shell /bin/bash --home /home/vagrant --gecos "User" vagrant
useradd -G admin vagrant
echo "vagrant:vagrant" | sudo chpasswd
sudo mkdir -p ~vagrant/.ssh

