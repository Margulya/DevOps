#!/bin/bash
pvcreate /dev/sdc /dev/sdd /dev/sde /dev/sdf
vgcreate vg01 /dev/sdc /dev/sdd /dev/sde /dev/sdf

lvcreate -n lv1 -l 100%FREE vg01 /dev/sdc /dev/sdd
lvcreate -n lv2 -l 100%FREE vg01 /dev/sde /dev/sdf

mkfs.ext4 /dev/vg01/lv1
mkfs.ext4 /dev/vg01/lv2

mkdir -p /mnt/vol1 /mnt/vol2

echo '/dev/vg01/lv1 /mnt/vol1 ext4 defaults 0 0 && 
      /dev/vg01/lv2 /mnt/vol2 ext4 defaults 0 0' >> /etc/fstab

mount -a