#!/bin/bash

echo "Installing LAMP Stack..."

sudo apt update

sudo apt install apache2 -y
sudo apt install mysql-server -y
sudo apt install php -y

sudo systemctl start apache2
sudo systemctl start mysql

echo "LAMP Stack Installed Successfully!"
