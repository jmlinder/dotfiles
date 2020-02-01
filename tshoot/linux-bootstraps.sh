#!/usr/bin/bash

# Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

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
apt update
apt upgrade
apt install zsh vim zsh-autosuggestions nordvpn neofetch zsh-syntax-highlighting git steam hfsprogs apt-transport-https ca-certificates curl gnupg-agent software-properties-common docker-ce docker-ce-cli containerd.io

# Git repos

# zsh history substring
cd ~ 
git clone https://github.com/zsh-users/zsh-history-substring-search.git
mkdir /usr/share/zsh-history-substring-search
mv ./zsh-history-substring-search/zsh-history-substring-search.zsh /usr/share/zsh-history-substring-search
rm -rf ./zsh-history-substring-search

# dotfiles
cd ~
rm -rf .bashrc .vimrc
git clone git@github.com:jmlinder/dotfiles.git
./dotfiles/bin/setup-dotfiles
