#!/bin/bash

# Install only if you have a NIC with RTL8188EUS chipset
has_chipset=$(sudo airmon-ng | egrep -c "RTL8188EUS")
has_installed=$(iw phy0 info | egrep -A 10 "Supported interface" | egrep "monitor")

if [[ -z $has_chipset ]]; then
    echo "You have to have an RTL8188EUS chipset for this."
    echo "Will skip the installation."
elif [[ -z $has_installed ]]; then
	echo "Installing the driver"
	sudo apt update && sudo apt upgrade -y
	git clone https://github.com/aircrack-ng/rtl8188eus
	cd rtl8188eus
	make && sudo make install
	echo 'blacklist r8188eu' | sudo tee -a '/etc/modprobe.d/realtek.conf'\necho 'blacklist rtl8xxxu' | sudo tee -a '/etc/modprobe.d/realtek.conf'
	rmmod r8188eu rtl8xxxu 8188eu
	sudo modprobe 8188eu
else
	echo "Driver already installed, skipping over it"
fi

# Installing hcxtools, hcxdumptool and hashcat
sudo apt install hcxtools=6.2.7-2 hcxdumptool=6.3.1-1 hashcat=6.2.6+ds1-1+b1 -y



