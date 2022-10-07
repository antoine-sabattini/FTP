#!/bin/bash

#Installation de proftpd/openssl
sudo apt install sudo adduser openssl proftpd-*
#création du dossier ssl
sudo mkdir /etc/proftpd/ssl
#générations Tls/ssl
sudo openssl req -new -x509 -days 365 -nodes -out /etc/proftpd/ssl/proftpd.cert.pem -keyout /etc/proftpd/ssl/proftpd.key.pem
#copie des fichiers de configurations modifiés
sudo cp proftpd.conf /etc/proftpd/proftpd.conf
sudo cp tls.conf /etc/proftpd/tls.conf
sudo cp modules.conf /etc/proftpd/modules.conf
sudo chmod -R 750 /etc/proftpd/ssl
#relancement du service
sudo service proftpd restart
