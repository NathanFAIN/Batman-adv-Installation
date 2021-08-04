#!/bin/bash

sudo apt update
sudo apt upgrade

git clone https://github.com/open-mesh-mirror/batman-adv.git

cd batman-adv


sudo make install
# sudo depmod -a
# sudo modprobe batman-adv
# sudo insmod batman-adv.ko


# sudo apt install libcrc32c
# sudo modprobe libcrc32c

# git clone git://github.com/openwrt/openwrt.git
# git clone -b chaos_calmer git://github.com/openwrt/openwrt.git
# git clone -b barrier_breaker git://github.com/openwrt/openwrt.git
# git clone -b attitude_adjustment git://github.com/openwrt/openwrt.git

# scripts/feeds update
# scripts/feeds install kmod-batman-adv
# scripts/feeds install batctl