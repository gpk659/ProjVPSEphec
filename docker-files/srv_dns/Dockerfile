FROM debian:wheezy

MAINTAINER claudiu burduja

RUN apt-get update

RUN apt-get install -y bind9 
RUN touch /etc/bind/resolv.conf
RUN touch /etc/bind/hostname
RUN touch /etc/bind/hosts
RUN ln -i /etc/bind/resolv.conf /etc/resolv.conf
RUN ln -i /etc/bind/hostname /etc/hostname
RUN ln -i /etc/bind/hosts /etc/hosts
RUN service bind9 start

EXPOSE 80
