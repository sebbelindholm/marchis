#! /bin/bash

# Modular Arch Install Script (marchis)
# --------------------------------
# author    : Sebastian Lindholm Gustafsson
#             https://github.com/sebbelindholm
# project   : https://github.com/sebbelindholm/marchis
#
# reference : https://wiki.archlinux.org/index.php/Installation_guide

# This file contains everything related to the filesystem.

#Colors
GREEN='\033[0;32m'
RED='\033[0;31m'
WHITE='\033[0;37m'
BLUE='\033[0;34m'
RESET='\033[0m'

echo -e "$GREEN[INFO]$RESET Setting up filesystem. "

root_drive=$1
boot_part_size=$2
swap=$3
swapsize=$4

# Checking if root drive is set.
if [ -z "$root_drive" ]
then
    echo -e -n "$BLUE[INPUT]$RESET What drive to install arch on: "
    read root_drive
else
    echo -e "$GREEN[INFO]$RESET Setting up arch on $root_drive. "
fi

# Checking if boot partition size is set.
if  [ -z "$boot_part_size" ]
then
    echo -e -n "$BLUE[INPUT]$RESET How big do you want the boot partition: "
    read boot_part_size
else
    echo "$GREEN[INFO]$RESET Boot partition size is $boot_part_size. "
fi

# Checking swap.
if [ -z "$swap" ]
then
    echo -e -n "$BLUE[INPUT]$RESET Do you want a swap partition: "
    read swap
else
    if [ "$swap" = true && -z "$swapsize"]
    then
        echo -e -n "$BLUE[INPUT]$RESET What size do you want the swap(in GB): "
        read swapsize
    else
        if ["$swap" = true && -n "$swapsize"]
        then
            echo "$GREEN[INFO]$RESET Using swap. "
        fi
    fi
fi
