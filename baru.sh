#!/bin/bash
clear;echo "######################################"
echo -e "   Auto installer Xderm-mini GUI\n######################################\n"
echo "Installing, Tunggu....."
mkdir -p /var/www/html/xderm /var/www/html/xderm/js /var/www/html/xderm/img /var/www/html/xderm/log
url="https://raw.githubusercontent.com/ryanfauzi1/xderm-mini_GUI/main"
wget -O /var/www/html/xderm/index.php $url/index.php -q
wget -O /var/www/html/xderm/index.html $url/index.html -q
wget -O /var/www/html/xderm/xderm-mini $url/xderm-mini -q
wget -O /var/www/html/xderm/login.php $url/login.php -q
wget -O /var/www/html/xderm/header.php $url/header.php -q
wget -O /var/www/html/xderm/config.txt $url/config.txt -q
wget -O /var/www/html/xderm/js/jquery-2.1.3.min.js $url/jquery-2.1.3.min.js -q
wget -O /var/www/html/xderm/img/image.png $url/image.png -q
wget -O /var/www/html/xderm/img/fav.ico $url/fav.ico -q
echo Start > /var/www/html/xderm/log/st
echo -e "user=admin\npasswd=xderm" > /root/auth.txt
echo -e "xderm-mini GUI terinstall.\n\nSilahkan Akses 'http://192.168.1.1/xderm'"
echo -e "Default Authentication\nUsername: admin\nPassword: xderm\n"
echo -e "Untuk mengganti U/P silahkan edit /root/auth.txt"
echo "Jangan lupa setting config dulu di webui nya."
echo "Terima kasih -salam ryan fauzi."
