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

Building a fresh image without configuration (replace the <>) : 
~~~bash
$ sudo docker build -t srv_web <repo path>/docker-files/srv_web/
~~~
##### Intranet
Create the docker and run it (replace the <>) : 
~~~bash
$ sudo docker run --name srv_web -p 80:80 -v <repo path>/www/:/var/www \
-v <repo path>/config/web/apache2/:/etc/apache2/ -itd krumka/srv_web
~~~

Access command line : 
~~~bash
$ sudo docker exec -it srv_web bash
~~~

Building a fresh image without configuration (replace the <>) : 
~~~bash
sudo docker build -t srv_intra /home/krumka/ProjVPSEphec/docker-files/srv_web/
~~~
##### DNS
Create the docker and run it (replace the <>) : 
~~~bash
sudo docker run --name srv_dns -p 53:53/udp\ 
-v <repo path>/config/dns:/etc/bind -itd krumka/srv_dns
~~~

Access command line : 
~~~bash
$ sudo docker exec -it srv_dns bash
~~~

Building a fresh image without configuration (replace the <>) : 
~~~bash
$ sudo docker build -t srv_web <repo path>/docker-files/srv_dns/
~~~
###### fichiers de config : 
* /etc/resolv.conf
* /etc/network/interfaces
* /etc/hostname
* /etc/hosts
* /etc/bind/
##### Mail
Create the docker and run it (replace the <>) : 
~~~bash
$ sudo docker run --name srv_mail -p 25:25 -p 2525:2525 -p 465:465 -p 143:143 -p 993:993\ 
-p 110:110 -p 995:995 -v <repo path>/config/mail/:/root/ -itd krumka/srv_mail
~~~

Access command line : 
~~~bash
$ sudo docker exec -it srv_mail bash
~~~

Building a fresh image without configuration (replace the <>) : 
~~~bash
$ sudo docker build -t srv_mail <repo path>/docker-files/srv_mail/
~~~

##### After a run on a fresh image : 

###### Install of postfix and MySQL

~~~bash
$ apt-get install postfix postfix-MySQL MySQL-server
# During the install you'll be ask for a password for MySQL's root
# then choose "2" (over internet) and press Enter
# Fill in with the FQDN of your mail adresses ex. : mail.domain.com
~~~
	
###### Launch MySQL
~~~bash
$ service MySQL start
~~~
###### Connexion to the MySQL server as root
~~~bash
$ MySQL -u root -p
# Then enter your password
~~~
###### Création de la base de données "postfix"
~~~MySQL
MySQL> CREATE database postfix;
~~~

###### Création de l'utilisateur "postfix" et ajout des permissions~
~~~MySQL
MySQL> CREATE USER 'postfix'@'localhost' IDENTIFIED BY 'MOT DE PASSE';
MySQL> GRANT USAGE ON *.* TO 'postfix'@'localhost';
MySQL> GRANT ALL PRIVILEGES ON postfix.* TO 'postfix'@'localhost';
~~~

###### On quitte la console MySQL
~~~MySQL
MySQL> exit
~~~

##### Proxy
Create the docker and run it (replace the <>) : 
~~~bash
$ sudo docker run --name srv_proxy -h px -v <repo path>/config/proxy/:/root/ \
-itd krumka/srv_proxy
~~~

Access command line : 
~~~bash
$ sudo docker exec -it srv_proxy bash
~~~

Building a fresh image without configuration (replace the <>) : 
~~~bash
$ sudo docker build -t srv_proxy <repo path>/docker-files/srv_proxy/
~~~

##### MySQL
Create the docker and run it (replace the <>) : 
~~~bash
$ 
~~~

Access command line : 
~~~bash
$ 
~~~

Building a fresh image without configuration (replace the <>) : 
~~~bash
$ 
~~~

##### OpenVPN
Install openVPN directly on the server by following the tutoriel on [this URL](https://www.digitalocean.com/community/tutorials/how-to-set-up-an-openvpn-server-on-ubuntu-14-04).