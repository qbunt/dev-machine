#!/bin/bash

xcode-select --install

# dotfiles
ln -s ~/Dropbox/dotfiles/.zshrc ~/.zshrc
ln -s ~/Dropbox/dotfiles/.gitconfig ~/.gitconfig

# brew stuff
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
cd ~/Dropbox/dotfiles
brew bundle
cd ~

echo "******************** Done ********************"
echo "Don't forget to configure SSH properly with key and config"