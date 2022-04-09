#!/usr/bin/env bash
set -e # fail if any command fails
cd ~
# sudo apt-add-repository ppa:fish-shell/release-3
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install tldr fish fd-find fzf  imagemagick neofetch unzip wslu git htop python3-pip ffmpeg trash-cli
sudo apt-get install ripgrep
sudo sed -i '/\/usr\/.crates2.json/d' /var/lib/dpkg/info/ripgrep.list
sudo apt-get install bat
sudo ln /usr/bin/batcat /usr/local/bin/batcat
sudo ln /usr/bin/fdfind /usr/local/bin/fd
# do everything inside the bitcamp folder
mkdir bitcamp
cd bitcamp
# install git-delta from deb package
wget https://github.com/dandavison/delta/releases/download/0.12.1/git-delta_0.12.1_amd64.deb
sudo dpkg -i git-delta_0.12.1_amd64.deb
# install exa from static binary
wget https://github.com/ogham/exa/releases/download/v0.10.0/exa-linux-x86_64-v0.10.0.zip
unzip exa-linux-x86_64-v0.10.0.zip -d ~/.local
# install rust-zoxide from static binary
tar https://github.com/ajeetdsouza/zoxide/releases/download/v0.8.0/zoxide-v0.8.0-x86_64-unknown-linux-musl.tar.gz
tar xvf zoxide-v0.8.0-x86_64-unknown-linux-musl.tar.gz
cd zoxide-v0.8.0-x86_64-unknown-linux-musl.tar.gz
# reorganize things to fit in ~/.local
mkdir bin
mv zoxide bin
mkdir -p usr/share/doc/zoxide
mv CHANGELOG.md LICENSE README.md usr/share/doc/zoxide
cp -r * ~/.local
