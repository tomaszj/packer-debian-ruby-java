# packer-debian-ruby-java

Packer configuration which builds machine for VirtualBox/vagrant and DigitalOcean that contains:
* Debian 7.8 wheezy
* Java 8 Oracle JDK installed
* Ruby 2.2.1 with chruby

Currently, the target user is vagrant (pass: vagrant). Check it out yourself!

## How to build VirtualBox image

    packer build -only=virtualbox-iso packer-config.json

## How to build DigitalOcean snapshot

    packer build -only=digitalocean -var 'do_access_key=YOUR_ACCESS_KEY' packer-config.json

This assumes you've got packer installed. More information can be found at http://packer.io

