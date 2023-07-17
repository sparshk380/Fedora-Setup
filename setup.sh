#!/bin/bash

# 1. Create WorkSpace Directory
mkdir -p ~/WorkSpace/{GitLab,Git,Python,Terraform,Docker,Kubernetes}


#3. Install necessary software
sudo dnf install -y gnome-tweaks && sudo dnf install -y vim-enhanced && sudo install -y git 


#2. Edit dnf config - 
echo "max_parallel_downloads=10" >> /etc/dnf/dnf.conf
echo "fastestmirror=True" >> /etc/dnf/dnf.conf

#3. Git Configuration - 
git config --global user.name "Sparsh Khandelwal"
git config --global user.email "sparshk848@protonmail.com"

#4. Install VScode - 
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'
sudo dnf install code
