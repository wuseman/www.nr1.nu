# piwigo

sudo apt install libapache2-mod-php php-common php-intl php-mysql php-gd php-xml php-ldap php-zip php-mbstring php-xmlrpc php-cli php-curl unzip -y


sudo vim /etc/php/7.4/apache/php.ini 

Setup:
memory_limit = 256M
upload_max_filesize = 100M
date.timezone = Europe/Lisbon


sudo mysql -u root 
CREATE DATABASE piwigo_db;
CREATE USER  'wuseman'@'localhost' IDENTIFIED BY 'odemnn';
GRANT ALL PRIVILEGES ON *.* TO 'wuseman'@'localhost';
FLUSH PRIVILEGES;
EXIT;


curl -o piwigo.zip http://piwigo.org/download/dlcounter.php?code=latest
sudo unzip piwigo.zip  -d /var/www/html/
sudo chown -R www-data:www-data /var/www/html/piwigo/
sudo chmod -R 755 /var/www/html/piwigo/

sudo a2ensite piwigo.conf
sudo a2enmod rewrite
sudo systemctl restart apache2
http://192.168.1.225/piwigo/install.php