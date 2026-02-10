#!/bin/bash

# 1. Update the System
sudo dnf update -y

# 2. Install the LAMP Stack components
# Apache, MariaDB, PHP, and the PHP-MySQL connector
sudo dnf install httpd mariadb-server php php-mysqlnd -y

# 3. Start and Enable Services (Makes them stay on after reboot)
sudo systemctl enable --now httpd
sudo systemctl enable --now mariadb

# 4. Configure SELinux (The "Security Gate")
# This allows Apache to talk to the database
sudo setsebool -P httpd_can_network_connect_db on

# 5. Firewall Configuration
# Open ports for web traffic (HTTP)
sudo firewall-cmd --permanent --add-service=http
sudo firewall-cmd --reload

# 6. Set Directory Permissions
# Ensures the 'apache' user can read your web files
sudo chown -R apache:apache /var/www/html
sudo chmod -R 755 /var/www/html

# 7. Final Sanity Check
echo "LAMP Stack Installation Complete."
php -m | grep mysqli
