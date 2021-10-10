FROM httpd:2.4

ADD . /www/var/html/

CMD apachectl -D FOREGROUND

#RUN service httpd start 
