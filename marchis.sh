#! /bin/bash

# Modular Arch Install Script (marchis)
# --------------------------------
# author    : Sebastian Lindholm Gustafsson
#             https://github.com/sebbelindholm
# project   : https://github.com/sebbelindholm/marchis
#
# reference : https://wiki.archlinux.org/index.php/Installation_guide

# Paths to neccessary files.
scripts=Scripts
packages=Packages
config=Config

# Load files.
source $scripts/splashscreen.sh
source $config/config.sh

# Display splashscreen.
echo -e $splashscreen
read -p "Press any key to continue!"
# Starts with filesystem setup.
source $scripts/filesystem.sh $root_drive $boot_part_size $swap $swapsize
