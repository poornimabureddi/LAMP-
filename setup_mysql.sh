#!/bin/bash

echo "Installing MySQL..."

sudo apt update
sudo apt install mysql-server -y

sudo systemctl start mysql

echo "MySQL Installed Successfully!"
