#!/bin/bash

xcode-select --install

DOTFILE_LOCATION=~/Dropbox/dotfiles

# dotfiles
ln -s ${DOTFILE_LOCATION}/.zshrc ~/.zshrc
ln -s ${DOTFILE_LOCATION}/.gitconfig ~/.gitconfig


# brew stuff
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

cd ${DOTFILE_LOCATION}
brew bundle
cd ~

# node
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.5/install.sh | bash

# copy macOs files

echo "******************** Done ********************"
echo "Don't forget to configure SSH properly with key and config"