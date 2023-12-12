#!/bin/bash

# Apache update and install
apt update -y && apt upgrade -y
apt install apache2 -y
systemctl start apache2
systemctl enable apache2

# Creating SSL config file
cat <<EOF > ssl-config.conf
[ req ]
default_bits       = 2048
default_md         = sha256
prompt             = no
encrypt_key        = no
distinguished_name = dn

[ dn ]
C=US
ST=New York
L=New York City
O=My Organization
OU=My Organizational Unit
emailAddress=me@example.com
CN = www.mywebsite.com
EOF

# Generate SSL sertificate
sudo openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/apache-selfsigned.key -out /etc/ssl/certs/apache-selfsigned.crt -config ssl-config.conf

# Creating config Apache file
cat <<EOF > apache-config.conf
<VirtualHost *:443>
    ServerAdmin webmaster@localhost
    DocumentRoot /var/www/html
    SSLEngine on
    SSLCertificateFile /etc/ssl/certs/apache-selfsigned.crt
    SSLCertificateKeyFile /etc/ssl/private/apache-selfsigned.key
</VirtualHost>
EOF

# Apply Apache config
sudo cp apache-config.conf /etc/apache2/sites-available/000-default.conf
sudo a2enmod ssl
sudo a2ensite default-ssl
sudo systemctl restart apache2

# Creating index.html
echo "<html><body><h1>Welcome to Margo Web Server</h1></body></html>" | sudo tee /var/www/html/index.html
