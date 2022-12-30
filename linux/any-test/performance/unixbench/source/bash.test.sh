#!/bin/bash

if [[ -n "$(command -v yum)" ]]; then
    sudo yum -y install make automake gcc autoconf gcc-c++ time perl-Time-HiRes
elif [[ -n "$(command -v apt-get)" ]]; then
    sudo apt-get -y update
    sudo apt-get -y install make automake gcc autoconf time perl
fi

git clone -b v5.1.3 https://github.com/kdlucas/byte-unixbench.git ~/byte-unixbench
cd ~/byte-unixbench/UnixBench

make

./Run