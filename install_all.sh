#!/bin/bash

git clone https://github.com/EWouters/php-7-debian.git
cd php-7-debian
./build.sh /usr/local/src
sudo ./install.sh

cd php-7-debian/extensions
./memcached-build.sh /usr/local/src
./memcached-install.sh

cd php-7-debian/extensions
./imagick-build.sh /usr/local/src
./imagick-install.sh

/etc/init.d/php7-fpm restart
sudo systemctl enable php-fpm
