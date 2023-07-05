#! /bin/bash

wget https://github.com/neovim/neovim/releases/download/stable/nvim-macos.tar.gz   
xattr -c ./nvim-macos.tar.gz
tar xzvf nvim-macos.tar.gz
mkdir -p ~/.local/bin/; cp -r nvim-macos/bin/* $_
mkdir -p ~/.local/share/; cp -r nvim-macos/share/* $_
mkdir -p ~/.local/lib/; cp -r nvim-macos/lib/* $_

mkdir ~/.npm-global
npm config set prefix '~/.npm-global'
echo "export PATH=~/.npm-global/bin:$PATH" > ~/.profile 
source ~/.profile 
LV_BRANCH='release-1.3/neovim-0.9' bash <(curl -s https://raw.githubusercontent.com/LunarVim/LunarVim/release-1.3/neovim-0.9/utils/installer/install.sh)


