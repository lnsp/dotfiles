#!/bin/bash

while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &
# bootstrap homebrew
echo "Installing homebrew ..."
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "Installing command line tools ..."
./brew.sh

# setup vim
echo "Configuring vim ..."
cp -r .vim_runtime $HOME/.vim_runtime
cp .vimrc $HOME/.vimrc

echo "Configuring tmux ..."

# bootstrap oh my zsh
echo "Installing oh-my-zsh ..."
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# configure oh my zsh
echo "Configuring shell ..."
./zsh.sh

echo "Configuring fonts ..."
./fonts.sh

echo "Configuring Mac App Store ..."
./appstore.sh

# run .macos config
echo "Configuring macOS ..."
./macos.sh
echo "Done."
