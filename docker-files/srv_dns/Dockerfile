FROM debian:wheezy

MAINTAINER claudiu burduja

RUN apt-get update

RUN apt-get install -y bind9 
RUN service bind9 start

EXPOSE 53
