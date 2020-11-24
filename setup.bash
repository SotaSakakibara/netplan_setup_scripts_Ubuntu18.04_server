#!/bin/bash
sudo apt install wireless-tools
sudo apt install network-manager

echo "# This file is generated from information provided by the datasource.  Changes" > /etc/netplan/50-cloud-init.yaml 
echo "# to it will not persist across an instance reboot.  To disable cloud-init's" >> /etc/netplan/50-cloud-init.yaml
echo "# network configuration capabilities, write a file" >> /etc/netplan/50-cloud-init.yaml 
echo "# /etc/cloud/cloud.cfg.d/99-disable-network-config.cfg with the following:" >> /etc/netplan/50-cloud-init.yaml
echo "# network: {config: disabled}" >> /etc/netplan/50-cloud-init.yaml

echo "network:" >> /etc/netplan/50-cloud-init.yaml

echo "ethernets:" >> /etc/netplan/50-cloud-init.yaml 
echo "etho0:" >> /etc/netplan/50-cloud-init.yaml
echo "eth0 address : "
read eth_adr
echo "addresses: [$eth_adr]" >> /etc/netplan/50-cloud-init.yaml 
echo "eth0 dhcp4 true or false : "
read eth_dhcp4
echo "dhcp4: $eth_dhcp4" >> /etc/netplan/50-cloud-init.yaml
echo "eth0 optional true or false : "
read eth_optional
echo "optional: $eth_optional" >> /etc/netplan/50-cloud-init.yaml 

echo "wifis:" >> /etc/netplan/50-cloud-init.yaml 
echo "wlan0:" >> /etc/netplan/50-cloud-init.yaml
echo "wlan0 address : "
read wlan_adr
echo "addresses: [$wlan_adr]" >> /etc/netplan/50-cloud-init.yaml
echo "wlan0 dhcp4 true or false : "
read wlan_dhcp4
echo "dhcp4: $wlan_dhcp4" >> /etc/netplan/50-cloud-init.yaml
echo "waln0 optional true of false : "
read wlan_optional
echo "optional: $wlan_optional" >> /etc/netplan/50-cloud-init.yaml 
echo "access-points:" >> /etc/netplan/50-cloud-init.yaml 
echo "SSID1 :"
read SSID1
echo ""$SSID1":" >> /etc/netplan/50-cloud-init.yaml 
echo "SSID1s password :"
read SSID1_pass
echo "password: "$SSID1_pass"" >> /etc/netplan/50-cloud-init.yaml 
echo "version: 2" >> /etc/netplan/50-cloud-init.yaml 
echo "renderer: NetworkManager" >> /etc/netplan/50-cloud-init.yaml

sudo netplan apply
sudo crontab -e 

