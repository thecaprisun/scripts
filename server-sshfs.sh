#!/bin/bash
sudo sshfs -o rw,allow_other,default_permissions thesun@192.168.1.170:/ /mnt/server
sudo sshfs -o rw,allow_other,default_permissions thesun@192.168.1.170:/mnt/storage /mnt/server-storage
