#!/bin/bash

#backup and copy .vimrc
if [[ -e ~/.vimrc ]] && [[ `diff $(pwd)/.vimrc ~/.vimrc` ]]; then
  mv ~/.vimrc ~/.vimrc_backup
  cp $(pwd)/.vimrc ~/.vimrc
fi
if [[ ! -e ~/.vimrc ]]; then
  cp $(pwd)/.vimrc ~/.vimrc
fi

#backup and copy .zshrc
if [[ -e ~/.zshrc ]] && [[ `diff $(pwd)/.zshrc ~/.zshrc` ]]; then
  mv ~/.zshrc ~/.zshrc_backup
  cp $(pwd)/.zshrc ~/.zshrc
fi
if [[ ! -e ~/.zshrc ]]; then
  cp $(pwd)/.zshrc ~/.zshrc
fi
