#!/bin/bash

./build.sh
sudo ./install.sh

./extensions/memcached-build.sh
sudo ./extensions/memcached-install.sh

./extensions/imagick-build.sh
sudo ./extensions/imagick-install.sh

/etc/init.d/php7-fpm restart
sudo systemctl enable php-fpm
