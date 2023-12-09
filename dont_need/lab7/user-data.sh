#!/bin/bash
sudo apt-get install -y openssh-server
sudo sed -i 's/#GatewayPorts no/GatewayPorts yes/' /etc/ssh/sshd_config
sudo service ssh restart
