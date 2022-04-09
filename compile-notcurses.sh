#!/usr/bin/env bash
set -e # fail if any command fails
mkdir -pv ~/bitcamp
cd ~/bitcamp
# download source tarball
wget -c https://github.com/dankamongmen/notcurses/releases/download/v3.0.8/notcurses_3.0.8+dfsg.1.orig.tar.xz
# https://github.com/dankamongmen/notcurses/blob/v3.0.8/INSTALL.md
# install dependencies
sudo apt-get install build-essential cmake doctest-dev libdeflate-dev libncurses-dev libunistring-dev pkg-config
# extract and enter tarball
tar xvf notcurses_3.0.8+dfsg.1.orig.tar.xz
cd notcurses-3.0.8
# cmake build procedure
mkdir -pv build
cd build
# configure cmake to compile a smaller version for demo purposes only
cmake .. -DUSE_POC=off -DUSE_PANDOC=off -DUSE_STATIC=off -DDFSG_BUILD=on
