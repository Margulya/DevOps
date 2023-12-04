#!/bin/bash

cat << 'EOF' > /lib/systemd/system/mover.service
[Unit]
Description=Super service
After=network.target

[Service]
ExecStart=/home/ubuntu/mover.sh
Restart=on-failure
RestartSec=5s
User=ubuntu

[Install]
WantedBy=multi-user.target
EOF

cat << 'EOF' > /home/ubuntu/mover.sh
#!/usr/bin/env bash

folder1=/home/ubuntu/folder1
folder2=/home/ubuntu/folder2
mkdir -p $folder1 $folder2

while [ 1 ]
do
    if [ -n "$(ls -A $HOME/folder1 2>/dev/null)" ]; then
        mv $folder1/* $folder2
    fi
    sleep 1
done
EOF

sudo chmod +x /home/ubuntu/mover.sh

# Reload systemd
systemctl daemon-reload

# Start and enable the service
systemctl start mover.service
systemctl enable mover.service


