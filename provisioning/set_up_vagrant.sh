#!/usr/bin/env bash

mkdir -p ~vagrant/.ssh

# Accept the Vagrant's default public key, to allow vagrant ssh access.
curl 'https://raw.githubusercontent.com/mitchellh/vagrant/master/keys/vagrant.pub' \
    > ~vagrant/.ssh/authorized_keys
chown -R vagrant ~vagrant/.ssh
chmod -R go-rwsx ~vagrant/.ssh

