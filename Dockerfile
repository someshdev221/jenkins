#!/bin/bash
From ubuntu:20.04

RUN apt update
RUN apt install apache2 -y && apt install git -y
RUN systemctl start apache2
RUN systemctl enable apache2
RUN systemctl restart apache2
WORKDIR /var/www/html
RUN git init
RUN git clone https://github.com/someshdev221/jenkins.git

EXPOSE 80

CMD ["apache2ctl", "-D", "FOREGROUND"]
