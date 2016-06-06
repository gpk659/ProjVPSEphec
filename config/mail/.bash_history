apt-get install libdb5.1 db4.8-util postfix procmail sasl2-bin
sudo adduser postfix sasl
adduser postfix sasl
dpkg-reconfigure postfix
dpkg-reconfigure postfix
postconf -e 'smtpd_sasl_local_domain ='
postconf -e 'smtpd_sasl_auth_enable = yes'
postconf -e 'smtpd_sasl_security_options = noanonymous'
postconf -e 'broken_sasl_auth_clients = yes'
postconf -e 'smtpd_recipient_restrictions = permit_sasl_authenticated,permit_mynetworks,reject_unauth_destination'
postconf -e 'inet_interfaces = all'
touch /etc/postfix/sasl/smtpd.conf
echo 'pwcheck_method: saslauthd' >> /etc/postfix/sasl/smtpd.conf
echo 'mech_list: plain login' >> /etc/postfix/sasl/smtpd.conf 
mkdir /etc/postfix/ssl
/etc/postfix/ssl/
cd /etc/postfix/ssl/
openssl genrsa -des3 -rand /etc/hosts -out smtpd.key 1024
openssl req -new -key smtpd.key -out smtpd.csr
openssl x509 -req -days 3650 -in smtpd.csr -signkey smtpd.key -out smtpd.crt
openssl rsa -in smtpd.key -out smtpd.key.unencrypted
mv -f smtpd.key.unencrypted smtpd.key
chmod 600 smtpd.key
openssl req -new -x509 -extensions v3_ca -keyout cakey.pem -out cacert.pem -days 3650
postconf -e 'smtpd_tls_auth_only = no'
postconf -e 'smtp_use_tls = yes'
postconf -e 'smtpd_use_tls = yes'
postconf -e 'smtp_tls_note_starttls_offer = yes'
postconf -e 'smtpd_tls_key_file = /etc/postfix/ssl/smtpd.key'
postconf -e 'smtpd_tls_cert_file = /etc/postfix/ssl/smtpd.crt'
postconf -e 'smtpd_tls_CAfile = /etc/postfix/ssl/cacert.pem'
postconf -e 'smtpd_tls_loglevel = 1'
postconf -e 'smtpd_tls_received_header = yes'
postconf -e 'smtpd_tls_session_cache_timeout = 3600s'
postconf -e 'tls_random_source = dev:/dev/urandom'
postconf -e 'myhostname = server1.example.com' 
apt-get install nano
nano /etc/postfix/main.cf 
/etc/init.d/postfix restart
apt-get install libsasl2-modules libsasl2-modules-sql libgsasl7 libauthen-sasl-cyrus-perl sasl2-bin libpam-mysql
mkdir -p /var/spool/postfix/var/run/saslauthd
rm -fr /var/run/saslauthd
ln -s /var/spool/postfix/var/run/saslauthd /var/run/saslauthd
chown -R root:sasl /var/spool/postfix/var/
chmod 710 /var/spool/postfix/var/run/saslauthd
adduser postfix sasl
nano /etc/default/saslauthd
nano /etc/default/saslauthd
 service saslauthd start
telnet localhost 25
apt-get install telnet
telnet localhost 25
adduser remy
testsaslauthd -u remy -p aaa
lsof -i :80
service postfix restart
apt-get install postfix postfix-mysql
mysql -u root -p
apt-get install mysql
mysql -u root -p
apt-get install mysql
apt-get install mysql-server
mysql -u root -p
mysql -u root -p
mysql -u root -p aaa
mysql -u root -p
apt-get remove mysql-server
apt-get install mysql
apt-get install mysql-server
mysql -u root
mysql -u root -p
apt-get install apache2 apache2-utils
apt-get install phpmyadmin
apt-get remove phpmyadmin
apt-get remove apache2 apache2-utils
mysql
ls /var/run/mysqld/mysqld.sock
ls /var/run/mysqld
service mysql start
mysql -u root -p
curl localhost
apt-get install curl
curl localhost
curl localhost
apt-get update
apt-get upgrade$
apt-get upgrade
curl localhost
service apache2 start
service apache2 restart
curl localhost
curl localhost
lynx localhost
apt-get install lynx
lynx localhost
service apache2 start
service mysql start
service service postfix restart
service dovecot restart
service postfix restart
telnet localhost 25
ls /etc/bind
