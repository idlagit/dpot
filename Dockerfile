FROM httpd:2.4

ADD . /www/var/html/

RUN service httpd start 
