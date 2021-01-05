#!/bin/bash

echo "yum -y update"

echo "yum install -y yum-utils"

echo "yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo"

echo "yum install -y yum install docker-ce docker-ce-cli containerd.io"

echo "systemctl start docker"

echo "systemctl enable docker"

echo "systemctl status docker"

echo "Done"