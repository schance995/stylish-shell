#!/usr/bin/env bash
# you can pick and choose what to uninstall. Here we uninstall everything from this workshop.
sudo rm -v /usr/local/bin/fd /usr/local/bin/bat
pip uninstall yt-dlp
rm -rv ~/bitcamp
sudo apt-get autoremove build-essential cmake doctest-dev libdeflate-dev libncurses-dev libunistring-dev pkg-config \
	tldr fish fd-find fzf imagemagick neofetch unzip python3-pip ffmpeg trash-cli \
	ripgrep
