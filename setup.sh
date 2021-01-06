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
read varpasswd
passwd postgre

#switch to postgres prompt
su --shell /bin/bash postgres

psql -d template1 -c "ALTER USER postgres WITH PASSWORD '$varpasswd';"










yum install -y yum-utils

yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo

yum install -y yum install docker-ce docker-ce-cli containerd.io

systemctl start docker

systemctl enable docker

systemctl status docker

docker volume create --name bitbucketVolume

docker run -v bitbucketVolume:/var/atlassian/application-data/bitbucket --name="bitbucket" -d -p 7990:7990 -p 7999:7999 atlassian/bitbucket-server

docker run -v /data/bitbucket:/var/atlassian/application-data/bitbucket --name="bitbucket" -d -p 7990:7990 -p 7999:7999 atlassian/bitbucket-server

docker run --name atlassian-postgres -e POSTGRES_PASSWORD=mysecretpassword -d postgres

echo "Done"