#!/bin/bash
sudo apt install wireless-tools
sudo apt install network-manager

suod echo "# This file is generated from information provided by the datasource.  Changes" > /etc/netplan/50-cloud-init.yaml 
sudo echo "# to it will not persist across an instance reboot.  To disable cloud-init's" >> /etc/netplan/50-cloud-init.yaml
sudo echo "# network configuration capabilities, write a file" >> /etc/netplan/50-cloud-init.yaml 
sudo echo "# /etc/cloud/cloud.cfg.d/99-disable-network-config.cfg with the following:" >> /etc/netplan/50-cloud-init.yaml
sudo echo "# network: {config: disabled}" >> /etc/netplan/50-cloud-init.yaml

sudo echo "network:" >> /etc/netplan/50-cloud-init.yaml

sudo echo "ethernets:" >> /etc/netplan/50-cloud-init.yaml 
sudo echo "etho0:" >> /etc/netplan/50-cloud-init.yaml
sudo echo "eth0 address : "
read eth_adr
sudo echo "addresses: [$eth_adr]" >> /etc/netplan/50-cloud-init.yaml 
sudo echo "eth0 dhcp4 true or false : "
read eth_dhcp4
sudo echo "dhcp4: $eth_dhcp4" >> /etc/netplan/50-cloud-init.yaml
sudo echo "eth0 optional true or false : "
read eth_optional
sudo echo "optional: $eth_optional" >> /etc/netplan/50-cloud-init.yaml 

sudo echo "wifis:" >> /etc/netplan/50-cloud-init.yaml 
sudo echo "wlan0:" >> /etc/netplan/50-cloud-init.yaml
sudo echo "wlan0 address : "
read wlan_adr
sudo echo "addresses: [$wlan_adr]" >> /etc/netplan/50-cloud-init.yaml
sudo echo "wlan0 dhcp4 true or false : "
read wlan_dhcp4
sudo echo "dhcp4: $wlan_dhcp4" >> /etc/netplan/50-cloud-init.yaml
sudo echo "waln0 optional true of false : "
read wlan_optional
sudo echo "optional: $wlan_optional" >> /etc/netplan/50-cloud-init.yaml 
sudo echo "access-points:" >> /etc/netplan/50-cloud-init.yaml 
sudo echo "SSID1 :"
read SSID1
sudo echo ""$SSID1":" >> /etc/netplan/50-cloud-init.yaml 
sudo echo "SSID1s password :"
read SSID1_pass
sudo echo "password: "$SSID1_pass"" >> /etc/netplan/50-cloud-init.yaml 
sudo echo "version: 2" >> /etc/netplan/50-cloud-init.yaml 
sudo echo "renderer: NetworkManager" >> /etc/netplan/50-cloud-init.yaml

sudo netplan apply
sudo crontab -e 

