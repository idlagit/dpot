FROM httpd:2.4

#ADD . /var/www/html
COPY . /usr/local/apache2/htdocs/

CMD apachectl -D FOREGROUND 
