#!/bin/bash

# This script create deb package of nginx.

# Установка модуля pagespeed для Nginx на Debian 6
# http://habrahabr.ru/post/214095/
#
# Build ngx_pagespeed From Source
# https://developers.google.com/speed/pagespeed/module/build_ngx_pagespeed_from_source
#
# JavaScript и Nginx = nginScript, а HTTP2 в придачу
# http://habrahabr.ru/post/267955/
#
# Install NGINX with http/2 and pagespeed
# https://www.m00nie.com/2015/01/install-nginx-and-pagespeed/

# Before building you should have installed following
# sudo apt-get install build-essential zlib1g-dev libpcre3 libpcre3-dev unzip

# file /_username_/nginx-1.10.0/nginx_1.10.0-1_amd64.deb will be created

# BASE_DIR="`pwd`"

# fail execution on error
set -e

cd
NPS_VERSION=1.11.33.0
wget -N https://github.com/pagespeed/ngx_pagespeed/archive/release-${NPS_VERSION}-beta.zip
unzip release-${NPS_VERSION}-beta.zip
cd ngx_pagespeed-release-${NPS_VERSION}-beta/
wget -N https://dl.google.com/dl/page-speed/psol/${NPS_VERSION}.tar.gz
tar -xzvf ${NPS_VERSION}.tar.gz --overwrite  # extracts to psol/

cd
# check http://nginx.org/en/download.html for the latest version
NGINX_VERSION=1.10.0
wget http://nginx.org/download/nginx-${NGINX_VERSION}.tar.gz
tar -xvzf nginx-${NGINX_VERSION}.tar.gz --overwrite
cd nginx-${NGINX_VERSION}/
./configure \
--add-module=$HOME/ngx_pagespeed-release-${NPS_VERSION}-beta \
--with-http_v2_module \
--with-http_ssl_module \
--with-http_stub_status_module \
--with-http_gzip_static_module \
--prefix=/etc/nginx \
--sbin-path=/usr/sbin/nginx \
--conf-path=/etc/nginx/nginx.conf \
--error-log-path=/var/log/nginx/error.log \
--http-log-path=/var/log/nginx/access.log \
--pid-path=/var/run/nginx.pid \
--lock-path=/var/run/nginx.lock
make

# create .deb file without local installation
checkinstall --install=no
