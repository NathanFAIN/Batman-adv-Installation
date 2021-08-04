#!/bin/bash

sudo apt update
sudo apt upgrade

git clone https://github.com/open-mesh-mirror/batman-adv.git

cd batman-adv

sudo make install
sudo depmod -a
sudo modprobe batman-adv
# sudo insmod batman-adv.ko