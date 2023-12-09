FROM thecodingmachine/php:8.1-v4-apache-node16

COPY ./webinstall.php /var/www/html/webinstall.php


RUN sudo apt-get update && sudo apt-get install -y wget

ENV APACHE_EXTENSION_DAV=0
ENV PHP_INI_MEMORY_LIMIT=1g
ENV PHP_INI_ERROR_REPORTING=E_ALL
ENV PHP_EXTENSIONS="pgsql gettext imap sockets zip curl dom gd exif intl mbstring bcmath curl dom opcache mbstring soap xml xmlrpc fileinfo intl xml pdo_sqlite pdo_mysql pdo_pgsql"
ENV PECL_EXTENSION=sodium

RUN chmod 777 /var/www/html/webinstall.php