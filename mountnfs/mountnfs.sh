#!/bin/bash
sudo service rpcbind start
mkdir -p $2
sudo mount $1 $2 # sudo mount blackbox:/volume1/transfer mnt/nfs/transfer