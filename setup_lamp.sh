#!/bin/bash
# LAMP Stack Automated Setup Script
# Author: B. Poornima

set -e

echo "========================================="
echo "  LAMP Stack Installation Starting..."
echo "========================================="

# Update system
echo "[1/6] Updating system packages..."
sudo apt-get update -y
sudo apt-get upgrade -y

# Install Apache
echo "[2/6] Installing Apache Web Server..."
sudo apt-get install -y apache2
sudo systemctl start apache2
sudo systemctl enable apache2

# Install MySQL
echo "[3/6] Installing MySQL Server..."
sudo apt-get install -y mysql-server
sudo systemctl start mysql
sudo systemctl enable mysql

# Install PHP
echo "[4/6] Installing PHP and modules..."
sudo apt-get install -y php libapache2-mod-php php-mysql php-curl php-json

# Configure Apache
echo "[5/6] Configuring Apache..."
sudo bash -c 'cat > /etc/apache2/sites-available/lamp.conf << CONF
<VirtualHost *:80>
    DocumentRoot /var/www/html
    DirectoryIndex index.php index.html
    ErrorLog ${APACHE_LOG_DIR}/error.log
    CustomLog ${APACHE_LOG_DIR}/access.log combined
</VirtualHost>
CONF'
sudo a2ensite lamp.conf
sudo systemctl restart apache2

# Deploy test PHP page
echo "[6/6] Deploying test page..."
sudo bash -c 'cat > /var/www/html/index.php << PHP
<?php
echo "<h1>LAMP Stack is Running!</h1>";
echo "<p>PHP Version: " . phpversion() . "</p>";
echo "<p>Server: " . $_SERVER["SERVER_SOFTWARE"] . "</p>";
?>
PHP'

echo "========================================="
echo "  LAMP Stack Setup Complete!"
echo "  Visit: http://localhost"
echo "========================================="
