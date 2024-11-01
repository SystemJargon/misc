#!/bin/bash
# sudo su 
echo '######################'
echo '######################'
echo '**** CPU INFO ****' 
cat /proc/cpuinfo | grep 'model'
echo '######################'
echo '######################'
echo '**** MEM INFO ****'
lshw -short -C memory
echo '######################'
echo '######################'
dmidecode --type 17
echo '**** DISK INFO ****'
lshw -class disk -class storage
echo '######################'
echo '######################'
