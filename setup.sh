#!/bin/bash

#update centos
yum -y update

#install postgre
yum -y install postgresql-server postgresql-contrib

#initiate database
postgresql-setup initdb

#start and enable postgre services on systemd
systemctl start postgresql
systemctl enable postgresql

echo Please input user postgres password!
#read varpasswd
passwd postgres

source jirasoftware.sh







