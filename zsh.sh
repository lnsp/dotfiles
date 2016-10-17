#!/bin/bash
echo "Downloading hyperzsh theme ..."
git clone https://github.com/tylerreckart/hyperzsh
cp -R hyperzsh/hyperzsh.zsh-theme ~/.oh-my-zsh/themes/hyperzsh.zsh-theme
rm -rf hyperzsh
echo "Copying zsh configuration ..."
cp ./.zshrc ~
