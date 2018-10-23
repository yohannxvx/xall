#!/bin/bash

#Created by yohannxvx
#Tested on with Centos7

clear
 setterm -foreground green
clear

echo  "  XMRig CPU installer for Centos 7"
echo  " "
echo  "  Created by yohannxvx"
echo  " "
echo  "  Installation will begin in a few seconds.."


yum update -y && yum install -f -y && yum install -y tmux && yum install -y git make cmake gcc gcc-c++ libstdc++-static libmicrohttpd-devel libuv-static && git clone https://github.com/xmrig/xmrig.git && cd xmrig && mkdir build && cd build && cmake .. -DCMAKE_BUILD_TYPE=Release -DUV_LIBRARY=/usr/lib64/libuv.a && make


 setterm -foreground white


echo " "
echo "installation success"
sleep t
clear

cd

echo "you may now use your config to start miner"
