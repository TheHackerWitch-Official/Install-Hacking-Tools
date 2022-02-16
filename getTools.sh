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
sudo apt install chisel

# Install Evil-WinRM
echo -e "${green}Installing Evil-WinRM.${clearColor}"
sudo gem install evil-winrm

# Install Bloodhound
echo -e "${green}Getting Bloodhound.${clearColor}"
sudo apt install bloodhound

# Get WinPeas
echo -e "${green}Cloning PEASS-ng${clearColor}"
git clone git@github.com:carlospolop/PEASS-ng.git

# Install CrackMapExec
echo -e "${green}Getting crackmapexec.${clearColor}"
sudo apt install crackmapexec

# Install sqlmap
echo -e "${green}Getting sqlmap.${clearColor}"
sudo apt install sqlmap

# Get Impacket Scripts (maybe)
echo -e "${green}Getting Impacket scripts.${clearColor}"
sudo apt install impacket-scripts

# Update Packages
echo -e "${green}Removing unnecessary files..${clearColor}"
sudo apt autoremove -y 

# End Mesage 
echo -e "${green}Finished installing tools. Happy hacking!${clearColor}"

