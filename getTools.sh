#!/bin/bash

green='\033[0;32m'
clearColor='\033[0m'

# Color printing function
print_text() {
  "${green}$1${clearColor}"
}

# Install pre-requisites
print_text "Updating system and installing curl, Git, and Ruby. Password may be required."

sudo apt update -y
sudo apt upgrade -y

print_text "Finished updating. Installing curl..."

# Install Curl
sudo apt install curl -y
print_text "Installed Curl."

# Install Git
sudo apt install git -y
print_text "Installed Git."

# Install Ruby
sudo apt install ruby-full -y
print_text "Installed Ruby."

# Install Chisel
print_text "Getting Chisel."
sudo apt install chisel -y

# Install Evil-WinRM
print_text "Installing Evil-WinRM. This may take a second."
sudo git clone https://github.com/Hackplayers/evil-winrm.git /opt/evil-winrm
cd /opt/evil-winrm
sudo gem install winrm
sudo gem install winrm-fs
sudo gem install stringio
sudo ln -s /opt/evil-winrm/evil-winrm.rb /usr/local/bin/evil-winrm
sudo gem install evil-winrm

# Install gobuster
print_text "Installing GoBuster."
sudo apt install gobuster -y

# Install Bloodhound
print_text "Getting Bloodhound."
sudo apt install bloodhound -y

# Get Rubeus
print_text "Getting Rubeus."
git clone https://github.com/GhostPack/Rubeus.git

print_text "Getting Certify."
git clone https://github.com/GhostPack/Certify.git

# Get WinPeas
print_text "Cloning PEASS-ng"
git clone git@github.com:carlospolop/PEASS-ng.git

# Install CrackMapExec
print_text "Getting crackmapexec."
sudo apt install crackmapexec -y

# Install sqlmap
print_text "Getting sqlmap."
sudo apt install sqlmap -y

# Get Impacket Scripts
print_text "Getting Impacket scripts."
sudo apt install impacket-scripts -y

# Get SecLists
print_text "Getting SecLists."
sudo apt install seclists -y

# Unzip rockyou
print_text "Unzipping rockyou.txt.gz in /usr/share/wordlists."
cd /usr/share/wordlists
sudo gzip -d rockyou.txt.gz

# Get WPScan
print_text "Getting WPScan."
gem install wpscan

# NEW STUFF
# nMap
print_text "Getting nMap."
sudo apt install nmap -y

# Metasploit
print_text "Getting Metasploit."
sudo apt install metasploit -y

# Nikto
print_text "Getting Nikto."
sudo apt install nikto -y

# Hydra
print_text "Getting Hydra."
sudo apt install hydra -y

# Ghidra
print_text "Getting Ghidra."
GHIDRA_VERSION=10.1.5
wget https://github.com/NationalSecurityAgency/ghidra/releases/download/Ghidra_${GHIDRA_VERSION}_build/ghidra_${GHIDRA_VERSION}_PUBLIC_20211221.zip -O ghidra.zip
unzip ghidra.zip -d /opt/
sudo ln -s /opt/ghidra_${GHIDRA_VERSION}_PUBLIC/ghidraRun /usr/local/bin/ghidra
rm ghidra.zip
sudo apt install ghidra -y

# Hashcat
print_text "Getting Hashcat."
sudo apt install hashcat -y

# Update Packages
print_text "Removing unnecessary files.."
sudo apt autoremove -y 

# End Mesage 
print_text "Finished installing tools. Happy hacking!"

