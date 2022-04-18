#---------------------------------------------------------------------------
# Dockefile to build Docker Image with Apache WebServer running on Ubuntu
#---------------------------------------------------------------------------

FROM ubuntu:21.04

RUN apt-get -y update
RUN apt-get -y install apache2

RUN echo 'Docker Image on CloudRun! in gcloud!<br>'   > /var/www/html/index.html
RUN echo '<b><font color="red">Version 1.3</font></b>' >> /var/www/html/index.html

CMD ["/usr/sbin/apache2ctl", "-D","FOREGROUND"]
EXPOSE 80
