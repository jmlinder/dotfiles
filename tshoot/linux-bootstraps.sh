#!/usr/bin/bash

# This is a bootstrap script I made to streamline the installation of common programs I use on Linux

# Rust
# curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# Docker
add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

# NordVPN
wget -qnc https://repo.nordvpn.com/deb/nordvpn/debian/pool/main/nordvpn-release_1.0.0_all.deb

# Install docker-compose
curl -L "https://github.com/docker/compose/releases/download/1.25.3/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose

# Install vimplug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Update and install requirements
sudo apt update
sudo apt upgrade
sudo apt install qemu-kvm libvirt-bin bridge-utils libvirt-clients libguestfs-tools libvirt-daemon-system virt-manager libosinfo-bin virtinst genisoimage zsh vim zsh-autosuggestions nordvpn neofetch zsh-syntax-highlighting steam hfsprogs apt-transport-https ca-certificates curl gnupg-agent software-properties-common docker-ce docker-ce-cli containerd.io

# Setup virt-manager
sudo adduser $(USER) libvirtd
sudo adduser $(USER) libvirt
sudo adduser $(USER) libvirt-qemu

# SSH setup
if [ "$SSH_PORT" = "" ]; then
    echo "No ssh port selected; using default port 22"
else
    sed -i '13s/^/Port $SSH_PORT\n#' /etc/ssh/sshd_config
    echo "ssh port setup on port $SSH_PORT\n"

# Git repos
# zsh history substring
cd ~ 
git clone https://github.com/zsh-users/zsh-history-substring-search.git
mkdir /usr/share/zsh-history-substring-search
mv ./zsh-history-substring-search/zsh-history-substring-search.zsh /usr/share/zsh-history-substring-search
rm -rf ./zsh-history-substring-search

# other prog-files
cd ~
git clone git@github.com:jmlinder/prog-files.git

# dotfiles setup
cd ~
rm -rf .bashrc .vimrc
./dotfiles/bin/setup-dotfiles

# End
echo "All done...\n"
