#!/bin/bash

yum -y update

yum install -y yum-utils device-mapper-persistent-data lvm2

yum install -y docker

systemctl start docker

systemctl enable docker

systemctl status docker
