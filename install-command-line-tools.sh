#!/usr/bin/env bash
set -e # fail if any command fails
cd ~
sudo apt-add-repository ppa:fish-shell/release-3
sudo apt update
sudo apt upgrade
sudo apt install tldr fish fd-find fzf imagemagick neofetch unzip wslu git htop python3-pip ffmpeg trash-cli
sudo apt install ripgrep
sudo sed -i '/\/usr\/.crates2.json/d' /var/lib/dpkg/info/ripgrep.list
sudo apt install bat
sudo ln -sf /usr/bin/fdfind /usr/local/bin/fd
sudo ln -sf /usr/bin/batcat /usr/local/bin/bat
pip install yt-dlp
# do everything inside the bitcamp folder
mkdir -pv ~/bitcamp/software
cd ~/bitcamp
# install git-delta from deb package
wget -c https://github.com/dandavison/delta/releases/download/0.12.1/git-delta_0.12.1_amd64.deb
sudo dpkg -i git-delta_0.12.1_amd64.deb
# install exa from static binary
wget -c https://github.com/ogham/exa/releases/download/v0.10.0/exa-linux-x86_64-v0.10.0.zip
yes A | unzip exa-linux-x86_64-v0.10.0.zip -d ~/bitcamp/software
# install rust-zoxide from static binary
wget -c https://github.com/ajeetdsouza/zoxide/releases/download/v0.8.0/zoxide-v0.8.0-x86_64-unknown-linux-musl.tar.gz
tar xvf zoxide-v0.8.0-x86_64-unknown-linux-musl.tar.gz --one-top-level
cd zoxide-v0.8.0-x86_64-unknown-linux-musl
# reorganize things to fit in ~/.local
mkdir -pv bin
mv -v zoxide bin
mkdir -pv usr/share/doc/zoxide
mv CHANGELOG.md LICENSE README.md usr/share/doc/zoxide
cp -rv * ~/bitcamp/software
# clean up
cd ..
rm -rv zoxide-v0.8.0-x86_64-unknown-linux-musl
