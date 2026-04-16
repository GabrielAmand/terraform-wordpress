#!/bin/bash
set -e

apt-get update -y
apt-get install -y apache2 php libapache2-mod-php php-mysql wget unzip

cd /tmp
wget https://wordpress.org/latest.tar.gz
tar -xzf latest.tar.gz

rm -rf /var/www/html/*
cp -r wordpress/* /var/www/html/

cp /var/www/html/wp-config-sample.php /var/www/html/wp-config.php

sed -i "s/database_name_here/${db_name}/" /var/www/html/wp-config.php
sed -i "s/username_here/${db_username}/" /var/www/html/wp-config.php
sed -i "s/password_here/${db_password}/" /var/www/html/wp-config.php
sed -i "s/localhost/${db_endpoint}/" /var/www/html/wp-config.php

chown -R www-data:www-data /var/www/html
chmod -R 755 /var/www/html

systemctl enable apache2
systemctl restart apache2
