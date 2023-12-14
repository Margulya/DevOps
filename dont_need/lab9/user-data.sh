#!/bin/bash
sudo apt-get update
sudo apt-get install -y docker.io
sudo usermod -aG docker ubuntu

sudo mkdir -p /etc/systemd/system/docker.service.d
sudo touch /etc/systemd/system/docker.service.d/override.conf

echo '[Service]
      ExecStart=
      ExecStart=/usr/bin/dockerd
}' | sudo tee /etc/systemd/system/docker.service.d/override.conf

echo '{
      "hosts": ["tcp://0.0.0.0:2375", "unix:///var/run/docker.sock"]
}' | sudo tee /etc/docker/daemon.json

sudo systemctl daemon-reload
sudo systemctl restart docker.service
