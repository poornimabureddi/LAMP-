#!/bin/bash
# MySQL Database Setup Script

DB_NAME="myapp_db"
DB_USER="myapp_user"
DB_PASS="SecurePass@123"

echo "Setting up MySQL database..."

sudo mysql -e "CREATE DATABASE IF NOT EXISTS ${DB_NAME};"
sudo mysql -e "CREATE USER IF NOT EXISTS '${DB_USER}'@'localhost' IDENTIFIED BY '${DB_PASS}';"
sudo mysql -e "GRANT ALL PRIVILEGES ON ${DB_NAME}.* TO '${DB_USER}'@'localhost';"
sudo mysql -e "FLUSH PRIVILEGES;"

echo "Database setup complete!"
echo "DB Name: ${DB_NAME}"
echo "DB User: ${DB_USER}"
