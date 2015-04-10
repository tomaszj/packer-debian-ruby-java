#!/usr/bin/env sh

# Required for ruby-build (https://github.com/sstephenson/ruby-build/wiki)
sudo apt-get install -y autoconf bison build-essential libssl-dev libyaml-dev libreadline6-dev zlib1g-dev libncurses5-dev libffi-dev libgdbm3 libgdbm-dev

# Install ruby-build
git clone https://github.com/sstephenson/ruby-build.git
sudo ruby-build/install.sh

# Create folder for Rubies and install 2.2.1
sudo mkdir /opt/rubies
sudo ruby-build 2.2.1 /opt/rubies/ruby-2.2.1

# Install chruby
wget -O chruby-0.3.9.tar.gz https://github.com/postmodern/chruby/archive/v0.3.9.tar.gz
tar -xvzf chruby-0.3.9.tar.gz
cd chruby-0.3.9
sudo make install
sudo scripts/setup.sh
echo "source /usr/local/share/chruby/chruby.sh" >> ~vagrant/.bashrc

# Select Ruby 2.2.1 by default
echo "chruby ruby-2.2.1" >> ~vagrant/.bashrc
source ~vagrant/.bashrc
cd

