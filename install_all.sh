#!/bin/bash

./build.sh /usr/local/src
sudo ./install.sh

./extensions/memcached-build.sh /usr/local/src
sudo ./extensions/memcached-install.sh

./extensions/imagick-build.sh /usr/local/src
sudo ./extensions/imagick-install.sh

/etc/init.d/php7-fpm restart
sudo systemctl enable php-fpm
