#! /bin/bash

# Modular Arch Install Script (marchis)
# --------------------------------
# author    : Sebastian Lindholm Gustafsson
#             https://github.com/sebbelindholm
# project   : https://github.com/sebbelindholm/marchis
#
# reference : https://wiki.archlinux.org/index.php/Installation_guide

# This file contains everything related to the filesystem.

echo "[INFO] Setting up filesystem. "

# Checking if root drive is set.
if [ -z "$1" ]
then
    echo "[INPUT] What drive to install arch on: "
    read root_drive
else
    echo "[INFO] Setting up arch on $1. "
fi

# Checking if boot partition size is set.
if  [ -z "$2" ]
then
    echo "[INPUT] How big do you want the boot partition: "
    read boot_part_size
else
    echo "[INFO] Boot partition size is $2. "
fi

# Checking swap.
if [ -z "$3" ]
then
    echo "[INPUT] Do you want a swap partition: "
    read swap
else
    if [ "$3" = true && -z "$4"]
    then
        echo "[INPUT] What size do you want the swap(in GB): "
        read swapsize
    else
        if ["$3" = true && -n "$4"]
        then
            echo "[INFO] Using swap. "
        fi
    fi
fi
