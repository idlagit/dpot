FROM ubuntu:latest

RUN apt-get -y update

RUN apt-get install -y apache2 curl

EXPOSE 82

WORKDIR /var/www/html

COPY index.html /var/www/html/index.html

ADD . /var/www/html/

ENTRYPOINT ["usr/sbin/apache2ctl"]

CMD ["-D", "FOREGROUND"]


#FROM httpd:2.4

#ADD . /var/www/html

#CMD apachectl -D FOREGROUND

#RUN service httpd start


#FROM centos:latest

#LABEL Author = Edris
#LABEL Role = Devops Engineer

#RUN yum -y update && yum clean all
#RUN yum install httpd -y
#RUN systemctl enable httpd.service

#ADD . /var/www/html/

#EXPOSE 90

#CMD systemctl -D FOREGROUND

#ENV servername dpot-app
#ENV container docker 
