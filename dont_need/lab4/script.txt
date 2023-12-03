#!/bin/bash
PASSWORD=$(openssl rand -base64 12)
PASSWORD_HASH=$(openssl passwd -6 -salt qwerty $PASSWORD)
echo "Attention! Remember your password: $PASSWORD"

useradd -p $PASSWORD_HASH -m adminuser
usermod -aG sudo adminuser
useradd -m poweruser
passwd -d poweruser
echo "poweruser ALL=(ALL:ALL) /usr/sbin/iptables" >> /etc/sudoers
usermod -aG adminuser poweruser
ln -s /home/poweruser/etc/mtab softlink