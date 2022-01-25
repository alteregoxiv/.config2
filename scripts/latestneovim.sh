#!/bin/bash
cd ~
sudo apt install cmake
sudo apt install libtool
sudo apt install libtool-bin
sudo apt install gettext
sudo rm -r neovim
git clone https://github.com/neovim/neovim
cd neovim
sudo make CMAKE_BUILD_TYPE=Release install
cd ~
sudo rm -r neovim
