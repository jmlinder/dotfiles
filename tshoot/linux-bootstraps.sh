#!/usr/bin/env bash

# This is a bootstrap script I made to streamline the installation of common programs I use on Linux

cd ~
# Rust
# curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# Docker install prep
sudo apt-get update
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common \
    openssh-server
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88
# Docker
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

# NordVPN
cd ~
wget -qnc https://repo.nordvpn.com/deb/nordvpn/debian/pool/main/nordvpn-release_1.0.0_all.deb
sudo apt install ./nordvpn-release_1.0.0_all.deb
rm -rf nordvpn-release_1.0.0_all.deb
# Install docker-compose
cd ~
curl -L "https://github.com/docker/compose/releases/download/1.25.3/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

# Update and install requirements
sudo apt update
sudo apt upgrade
sudo apt install nordvpn qemu-kvm libvirt-bin bridge-utils libvirt-clients libguestfs-tools libvirt-daemon-system virt-manager libosinfo-bin virtinst genisoimage zsh vim neofetch zsh-syntax-highlighting steam hfsprogs docker-ce docker-ce-cli containerd.io

# Setup virt-manager
sudo adduser $USER libvirtd
sudo adduser $USER libvirt
sudo adduser $USER libvirt-qemu

# SSH setup
if [ "$SSH_PORT" = "" ]; then
    echo "No ssh port selected; using default port 22"
else
    sudo sed -i '13s/^/Port $SSH_PORT\n#' /etc/ssh/sshd_config
    echo "ssh port setup on port $SSH_PORT\n"
fi
# Git repos

# zsh-autosuggestions
cd ~
git clone https://github.com/zsh-users/zsh-autosuggestions
sudo mkdir /usr/share/zsh-autosuggestions
sudo mv ./zsh-autosuggestions/zsh-autosuggestions.zsh /usr/share/zsh-autosuggestions/
rm -rf ./zsh-autosuggestions

# LSD
cd ~
wget https://github.com/Peltoche/lsd/releases/download/0.16.0/lsd_0.16.0_amd64.deb
sudo dpkg -i lsd_0.16.0_amd64.deb
rm -rf lsd_0.16.0_amd64.deb

# zsh history substring
cd ~
git clone https://github.com/zsh-users/zsh-history-substring-search.git
sudo mkdir /usr/share/zsh-history-substring-search
sudo mv ./zsh-history-substring-search/zsh-history-substring-search.zsh /usr/share/zsh-history-substring-search
rm -rf ./zsh-history-substring-search

# rmtrash
sudo apt install trash-cli
cd ~
git clone https://github.com/PhrozenByte/rmtrash.git
sudo mv rmtrash/rmtrash /usr/local/bin
sudo mv rmtrash/rmdirtrash /usr/local/bin
rm -rf ./rmtrash

# other prog-files
cd ~
git clone git@github.com:jmlinder/prog-files.git

# Install nerd font for terminal
cd ~
wget https://github.com/source-foundry/Hack/releases/download/v3.003/Hack-v3.003-ttf.zip
unzip Hack-v3.003-ttf.zip
sudo mv ./ttf/ /usr/share/fonts
rm -rf Hack-v3.003-ttf.zip
rm -rf ./ttf/
fc-cache -f -v 
fc-list | grep "Hack"

# change shell to zsh at login
sudo chsh -s /usr/bin/zsh

# dotfiles setup
cd ~
sudo rm -rf .bashrc .vimrc
./dotfiles/bin/setup-dotfiles

# End
echo "All done..."
