#!/bin/bash

# Initialize
rm -rf ~/.bash_profile
rm -rf ~/.bash_logout
rm -rf ~/.bashrc
rm -rf ~/.bashconf
rm -rf ~/.emacs.d
rm -rf ~/lib/clangtest
rm -rf ~/bin/ctest
rm -rf ~/lib/textools
rm -rf ~/bin/csvtotex
rm -rf ~/bin/textopdf

if [ ! -e ~/lib ]; then
    mkdir ~/lib
fi

if [ ! -e ~/bin ]; then
    mkdir ~/bin
fi

# Bash
ln -s ~/dotfiles/bash.d/bash_profile.sh ~/.bash_profile
ln -s ~/dotfiles/bash.d/bash_logout.sh ~/.bash_logout
ln -s ~/dotfiles/bash.d/bashrc.sh ~/.bashrc
ln -s ~/dotfiles/bash.d/bashconf ~/.bashconf

# Emacs
ln -s ~/dotfiles/emacs.d ~/.emacs.d

# CLang Test
ln -s ~/dotfiles/lib/clangtest ~/lib/clangtest
ln -s ~/dotfiles/lib/clangtest/ctest ~/bin/ctest

# TeX
ln -s ~/dotfiles/lib/textools ~/lib/textools
ln -s ~/dotfiles/lib/textools/csvtotex ~/bin/csvtotex
ln -s ~/dotfiles/lib/textools/textopdf ~/bin/textopdf
