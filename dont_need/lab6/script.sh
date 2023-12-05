#!/bin/bash
apt-get update
apt-get install -y lvm2

pvcreate /dev/sdc /dev/sdd /dev/sde /dev/sdb
vgcreate vg00 /dev/sdc /dev/sdd /dev/sde /dev/sdb

lvcreate -n lv1 -l 100%FREE vg00 /dev/sdc /dev/sdd
lvcreate -n lv2 -l 100%FREE vg00 /dev/sde /dev/sdb

mkfs.ext4 /dev/vg00/lv1
mkfs.ext4 /dev/vg00/lv2

mkdir -p /mnt/vol1 /mnt/vol2

echo '/dev/vg00/lv1 /mnt/vol1 ext4 defaults 0 0 && 
      /dev/vg00/lv2 /mnt/vol2 ext4 defaults 0 0' >> /etc/fstab

mount -a
