#!/bin/bash

sudo apt-get update
sudo apt-get install -y nginx

MY_IP = $(curl http://169.254.169.254/latest/meta-data/public-ipv4)
echo "Hello from MyEC2Instance with IP $MY_IP" > /var/www/html/index.html