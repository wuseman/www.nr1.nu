# piwigo

### Debian/Ubuntu

```sh
apt install libapache2-mod-php php-common php-intl php-mysql php-gd php-xml php-ldap php-zip php-mbstring php-xmlrpc php-cli php-curl unzip -y
```

### Configure php.ini

```sh
vim /etc/php/7.4/apache/php.ini 
```

* Set your settings to below:

```
memory_limit = 256M
upload_max_filesize = 100M
date.timezone = Europe/Lisbon
```

### Setup Database

```sh
sudo mysql -u root 
CREATE DATABASE piwigo_db;
CREATE USER  'wuseman'@'localhost' IDENTIFIED BY 'odemnn';
GRANT ALL PRIVILEGES ON *.* TO 'wuseman'@'localhost';
FLUSH PRIVILEGES;
EXIT;
```

### Install Piwigo

```sh
curl -o piwigo.zip http://piwigo.org/download/dlcounter.php?code=latest
unzip piwigo.zip  -d /var/www/html/
chown -R www-data:www-data /var/www/html/piwigo/
chmod -R 755 /var/www/html/piwigo/

sudo a2ensite piwigo.conf
sudo a2enmod rewrite
sudo systemctl restart apache2
http://192.168.1.225/piwigo/install.php
```
