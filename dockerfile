FROM devopsedu/webapp

#MAINTAINER Saswati
RUN apt-get update -y
RUN apt-get install -y apache2

RUN rm -rf /var/www/html/*
ADD https://github.com/edureka-devops/projCert/tree/master/website /var/www/html
EXPOSE 8080
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
