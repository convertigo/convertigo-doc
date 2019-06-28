#!/bin/sh

DIR=$( cd -P $(dirname $0); pwd)
docker rm -f my-apache-app
docker run -itd --name my-apache-app -p 8080:80 -v "$DIR/_site":/mnt/ -v "$DIR/index.php":/var/www/html/index.php php:apache sh -c \
"a2enmod rewrite;ln -s /mnt develop;ln -s /mnt 7.6.0;ln -s /mnt 7.6.1;apache2-foreground"