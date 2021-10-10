#!/bin/bash

sudo docker rm -f $(sudo docker ps -a -q)
sudo docker build /home/ubuntu/jenkins/workspace/1-Dpot-Git_Job -t httpd
sudo docker run -it -d -p 82:80 httpd 
