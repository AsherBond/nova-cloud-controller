#!/bin/bash
apt-get -y install unzip

nova-manage user admin admin
echo "User creation: $?"
nova-manage project create novaproject admin
echo "Project creation: $?"
nova-manage network create novanet 11.0.0.0/24 1 255
echo "Network creation: $?"
nova-manage project zipfile novaproject admin
echo "Zipfile creation: $?"
unzip nova.zip
