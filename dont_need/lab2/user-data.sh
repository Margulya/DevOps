#!/bin/bash 
sudo yum update
sudo yum -y install mc vim git httpd 
sudo service httpd start
sudo systemctl enable httpd