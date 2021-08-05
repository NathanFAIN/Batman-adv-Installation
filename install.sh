#!/bin/bash

# sudo apt update
# sudo apt upgrade


sudo apt-get install libncurses5-dev libncursesw5-dev 5.10.0-qcomlt-arm64
sudo apt-get install pkg-config

git clone git://github.com/openwrt/openwrt.git
./openwrt/scripts/feeds update
./openwrt/scripts/feeds install kmod-batman-adv
./openwrt/scripts/feeds install batctl

# git clone https://github.com/open-mesh-mirror/batman-adv.git
# cd batman-adv

sudo modprobe libcrc32c
sudo modprobe bridge
sudo modprobe br_netfilter

wget https://downloads.open-mesh.org/batman/releases/batman-adv-2020.4/batman-adv-2020.4.tar.gz
tar -xf batman-adv-2020.4.tar.gz
cd batman-adv-2020.4
sudo make 
sudo make install
sudo insmod net/batman-adv/batman-adv.ko
sudo modprobe batman-adv


# sudo depmod -a
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