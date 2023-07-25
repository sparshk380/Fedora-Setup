#!/bin/bash

# 1. Create WorkSpace Directory
mkdir -p ~/WorkSpace/{GitLab,Git,Python,Terraform,Docker,Kubernetes}
ls -lR ~/WorkSpace

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
sudo dnf install -y code

#5. Install Brave -
sudo dnf config-manager --add-repo https://brave-browser-rpm-release.s3.brave.com/brave-browser.repo
sudo rpm --import https://brave-browser-rpm-release.s3.brave.com/brave-core.asc
sudo dnf install -y brave-browser brave-keyring

#6. Install Google Chrome - 
wget https://www.google.com/intl/en_in/chrome/next-steps.html?statcb=0&installdataindex=empty&defaultbrowser=0
sudo dnf install -y ~/Downloads/google*

#7. Install zsh & oh-my-zsh
sudo dnf install -y zsh
chsh -s $(which zsh)
sudo echo "185.199.108.133 raw.githubusercontent.com" >> /etc/hosts
cat /etc/hosts
sh -c "$(wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"

