#!/bin/bash

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

#INSTALATION OF DEPENDENCIES
#sudo add-apt-repository ppa:ondrej/php -y && sudo apt update && sudo apt install -y php8.4 php8.4-{gd,mysql,mbstring,bcmath,xml,curl,zip,intl,sqlite3,fpm}
#sudo apt install -y nginx
#sudo systemctl enable --now nginx

#INSTALATION OF PELICAN
#sudo mkdir -p /var/www/pelican
#cd /var/www/pelican
#curl -L https://github.com/pelican-dev/panel/releases/latest/download/panel.tar.gz | sudo tar -xzv
#curl -sS https://getcomposer.org/installer | sudo php -- --install-dir=/usr/local/bin --filename=composer
#sudo COMPOSER_ALLOW_SUPERUSER=1 composer install --no-dev --optimize-autoloader

#WEBSERVER CONFIGURATION
#sudo rm /etc/nginx/sites-enabled/default

echo "[1] I have an domain and i want to use https (https://domain.fr)"
echo "[2] I want to use http (use the IP)"
read -p "Do you: " choix
echo -e "${NC}You selected: $choix"

if [ "$choix" == "1" ]; then

elif [ "$choix" == "2" ]; then
else
    echo -e "${RED}Invalid option. Installation abort.${NC}"
fi
