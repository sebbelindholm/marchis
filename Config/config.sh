#! /bin/bash

# Modular Arch Install Script (marchis)
# --------------------------------
# author    : Sebastian Lindholm Gustafsson
#             https://github.com/sebbelindholm
# project   : https://github.com/sebbelindholm/marchis
#
# reference : https://wiki.archlinux.org/index.php/Installation_guide

# This is a example config file for the script.

# Set hostname.
# Cant be empty, will be prompted.
hostname=

# What drive to install arch onto. Format is /dev/YOUR_DRIVE_HERE.
# This field cant be empty, will be prompted if it is.
root_drive=

# Other drives to mount. Format is drives=DRIVE1 DRIVE2 DRIVE3 etc.
# Can be left empty.
other_drives=

# Set boot partitions size.
# Defaults to 550MB.
boot_part_size=

# Set to true if you want swap partition, false if not.
# Defaults to false.
swap=
# Set swap size in GB.
swapsize=

# The Users name.
# Cant be empty, will be prompted if it is.
user=

# Make add user to wheel group.
# defaults to false.
add_wheel=

# Users password can be set here but not recommended.
# Should be set as enviroment variable.
user_pass=

# Root password can be set here but not recommended.
# Should be set as enviroment variable.
root_pass=

# Set system region, used for timezone. Format REGION/CITY example Europe/Stockholm.
# Cant be empty, will be prompted if is.
zoneinfo=

# Set keymap. Example sv-latin1
# Defaults to NULL wich makes the keymap english US.
keymap=

# Allow AUR packages in $USER_PACKAGES file.
# Will install yay if true, defaults to false and script will crash if false and AUR packages are in file.
aur_packages=

# Create standard directories in $HOME.
# Standard is false.
xdg_home_dirs=

# Set users shell.
# Defaults to bash
usr_shell=
