#!/bin/sh
##############################################################
#
# Rock-Solid Node.js Platform on Ubuntu
# Auto-config by apptob.org
# Author: Ruslan Khissamov, email: rrkhissamov@gmail.com
# GitHub: https://github.com/rushis
#
##############################################################

# Update System
echo "System Update"
apt-get -y update
echo "Update completed"

# Install help app
apt-get -y install libssl-dev git-core pkg-config build-essential curl gcc g++ checkinstall

# Download & Unpack Node.js - v. 0.8.19
echo "Download Node.js - v. 0.8.19"
mkdir /tmp/node-install
cd /tmp/node-install
wget http://nodejs.org/dist/v0.8.19/node-v0.8.19.tar.gz
tar -zxf node-v0.8.19.tar.gz
echo "Node.js download & unpack completed"

# Install Node.js
echo Install Node.js
cd node-v0.8.19
./configure && make && checkinstall --install=yes --pkgname=nodejs --pkgversion "0.8.19" --default
echo "Node.js install completed"
