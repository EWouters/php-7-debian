#!/bin/bash

sudo ./build.sh
sudo ./install.sh

sudo ./extensions/memcached-build.sh
sudo ./extensions/memcached-install.sh

sudo ./extensions/imagick-build.sh
sudo ./extensions/imagick-install.sh

sudo ./extensions/redis-build.sh
sudo ./extensions/redis-install.sh

/etc/init.d/php7-fpm restart
sudo systemctl enable php-fpm
