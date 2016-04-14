FROM debian:wheezy

MAINTAINER Rémy Lambinet <rem.lambi171@gmail.com>

RUN apt-get update
RUN apt-get install -y php5 
RUN apt-get install  -y libapache2-mod-php5
RUN service apache2 restart

EXPOSE 80

