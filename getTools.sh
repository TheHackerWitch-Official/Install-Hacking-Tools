#!/bin/bash

green='\033[0;32m'
clearColor='\033[0m'

# Install pre-requisites
echo -e "${green}Updating system and installing curl, Git, and Ruby. Password may be required.${clearColor}"

sudo apt update -y
sudo apt upgrade -y
echo -e "${green}FInished updating. Installing curl...${clearColor}"

# Install Curl
sudo apt install curl -y
echo -e "${green}Installed Curl.${clearColor}"

# Install Git
sudo apt install git -y
echo -e "${green}Installed Git.${clearColor}"

# Install Ruby
sudo apt install ruby-full -y
echo -e "${green}Installed Ruby.${clearColor}"

# Install Chisel
echo -e "${green}Getting Chisel.${clearColor}"
sudo apt install chisel -y

# Install Evil-WinRM
echo -e "${green}Installing Evil-WinRM.${clearColor}"
sudo gem install evil-winrm

# Install gobuster
echo -e "{green}Installing GoBuster.${clearColor}"
sudo apt install gobuster -y

# Install Bloodhound
echo -e "${green}Getting Bloodhound.${clearColor}"
sudo apt install bloodhound -y

# Get WinPeas
echo -e "${green}Cloning PEASS-ng${clearColor}"
git clone git@github.com:carlospolop/PEASS-ng.git

# Install CrackMapExec
echo -e "${green}Getting crackmapexec.${clearColor}"
sudo apt install crackmapexec -y

# Install sqlmap
echo -e "${green}Getting sqlmap.${clearColor}"
sudo apt install sqlmap -y

# Get Impacket Scripts
echo -e "${green}Getting Impacket scripts.${clearColor}"
sudo apt install impacket-scripts -y

# Get SecLists
echo -e "${green}Getting SecLists.${clearColor}"
sudo apt install seclists -y

# Unzip rockyou
echo -e "${green}Unzipping rockyou.txt.gz in /usr/share/wordlists.${clearColor}"
cd /usr/share/wordlists
sudo gzip -d rockyou.txt.gz

# Update Packages
echo -e "${green}Removing unnecessary files..${clearColor}"
sudo apt autoremove -y 

# End Mesage 
echo -e "${green}Finished installing tools. Happy hacking!${clearColor}"

