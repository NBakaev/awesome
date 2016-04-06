#!/bin/bash

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


cd
NPS_VERSION=1.9.32.10
wget https://github.com/pagespeed/ngx_pagespeed/archive/release-${NPS_VERSION}-beta.zip
unzip release-${NPS_VERSION}-beta.zip
cd ngx_pagespeed-release-${NPS_VERSION}-beta/
wget https://dl.google.com/dl/page-speed/psol/${NPS_VERSION}.tar.gz
tar -xzvf ${NPS_VERSION}.tar.gz  # extracts to psol/

cd
# check http://nginx.org/en/download.html for the latest version
NGINX_VERSION=1.9.5
wget http://nginx.org/download/nginx-${NGINX_VERSION}.tar.gz
tar -xvzf nginx-${NGINX_VERSION}.tar.gz
cd nginx-${NGINX_VERSION}/
./configure --add-module=$HOME/ngx_pagespeed-release-${NPS_VERSION}-beta --with-http_v2_module
make
checkinstall
