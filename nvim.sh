#!/bin/bash

pip install neovim -q
mkdir -p ~/.config/nvim/
cp init.vim ~/.config/nvim/
nvim +NeoBundleInstall +qall
