#!/bin/bash
# Current fix is only for ubuntu but I hope to add in fedora too. 
echo "Showing available drivers"
sudo ubuntu-drivers devices
echo "Downloading the recommended Drivers"
sudo apt install $(sudo ubuntu-drivers devices | grep "recommended" | awk '{print $3}') lightdm -y
echo "Reconfigure to gdm3" && sleep 10
sudo dpkg-reconfigure lightdm
sleep 5 && echo "Restarting"
sudo reboot
