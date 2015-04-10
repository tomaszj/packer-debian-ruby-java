#!/usr/bin/env bash

# Usual updates first
sudo apt-get update
sudo apt-get install -y curl wget
sudo apt-get install -y lsb-release
sudo apt-get install -y git

# Print out system version
lsb_release -da
