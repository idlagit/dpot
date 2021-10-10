FROM httpd:2.4

ADD ./dpot/* /www/var/html/

RUN service httpd start 
