# Projet VPS Ephec 2016

Here is the [Docker Link](https://hub.docker.com/u/krumka/) where you can find the images used for the project.

## Goal of the Project

I don't know :d

## To make the Dockers

etc etc

## Docker commands
##### WEB
Create the docker and run it (replace the <>) : 
~~~bash
$ sudo docker run --name srv_web -p 80:80 -v <repo path>/www/:/var/www \
-v <repo path>/config/web/apache2/:/etc/apache2/ -itd krumka/srv_web
~~~

Access command line : 
~~~bash
$ sudo docker exec -it srv_web bash
~~~

Building the fresh image without configuration (replace the <>) : 
~~~bash
$ sudo docker build -t krumka/srv_web <repo path>/docker-files/srv_web/
~~~
##### DNS
Create the docker and run it (replace the <>) : 
~~~bash
sudo docker run --name srv_dns -p 53:53/udp -v <repo path>/config/dns:/etc/bind -itd krumka/srv_dns
~~~

Access command line : 
~~~bash
$ sudo docker exec -it srv_web bash
~~~

Building the fresh image without configuration (replace the <>) : 
~~~bash
$ sudo docker build -t krumka/srv_web <repo path>/docker-files/srv_web/
~~~
créé le docker apache : 
sudo docker run --name srv_dns -p 53:53/udp -v /home/krumka/ProjVPSEphec/config/dns:/etc/bind -itd krumka/srv_dns
------------------------------------------------------------------------------------------
aller sur le docker en ligne de commande : 
sudo docker exec -it srv_dns bash
------------------------------------------------------------------------------------------
Construction image docker srv_web :
sudo docker build -t krumka/srv_dns /home/krumka/ProjVPSEphec/docker-files/srv_dns/
------------------------------------------------------------------------------------------
fichiers de config : 
/etc/resolv.conf
/etc/network/interfaces
/etc/hostname
/etc/hosts
/etc/bind/

