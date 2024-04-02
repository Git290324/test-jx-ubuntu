#!/bin/bash

# Update package lists and install upgrades
sudo apt update && sudo apt upgrade -y

# Download MySQL APT configuration
wget http://dev.mysql.com/get/mysql-apt-config_0.8.16-1_all.deb

# Install MySQL server
sudo apt update
sudo apt install mysql-server -y

# Start and enable MySQL service
sudo systemctl start mysql
sudo systemctl enable mysql

# Install necessary libraries
sudo apt install libuuid1:i386 -y
sudo apt install libstdc++6 -y
sudo apt install libssl1.0.0 -y

# Install and configure UFW
sudo apt install ufw
sudo ufw allow 5622/tcp
sudo ufw allow 5623/tcp
sudo ufw allow 5632/tcp
sudo ufw allow 6666/tcp
sudo ufw allow 3306/tcp
sudo ufw allow 5002/tcp
sudo ufw enable -y
