#!/bin/bash

sudo apt update
sudo apt upgrade

git clone https://github.com/open-mesh-mirror/batman-adv.git

cd batman-adv

sudo apt-get install \
  g++-7-arm-linux-gnueabihf g++-7-multilib-arm-linux-gnueabihf g++-arm-linux-gnueabihf \
  gcc-7-arm-linux-gnueabihf gcc-7-multilib-arm-linux-gnueabihf gcc-arm-linux-gnueabihf \
  libasan4-armhf-cross libasan4-dbg-armhf-cross libatomic1-armhf-cross libatomic1-dbg-armhf-cross \
  libc6-armel-armhf-cross libc6-armel-cross libc6-armhf-cross libc6-dev-armel-armhf-cross \
  libc6-dev-armel-cross libc6-dev-armhf-cross libcilkrts5-armhf-cross libcilkrts5-dbg-armhf-cross \
  libgcc-7-dev-armhf-cross libgcc1-armhf-cross libgcc1-dbg-armhf-cross libgomp1-armhf-cross \
  libgomp1-dbg-armhf-cross libsfasan4-armhf-cross libsfatomic1-armhf-cross \
  libsfcilkrts5-armhf-cross libsfgcc-7-dev-armhf-cross libsfgcc1-armhf-cross \
  libsfgomp1-armhf-cross libsfstdc++-7-dev-armhf-cross libsfstdc++6-armhf-cross \
  libsfubsan0-armhf-cross libstdc++-7-dev-armhf-cross libstdc++6-7-dbg-armhf-cross \
  libstdc++6-armhf-cross libubsan0-armhf-cross libubsan0-dbg-armhf-cross \

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