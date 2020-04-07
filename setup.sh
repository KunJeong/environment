#!/bin/bash

#backup and copy .vimrc
if [[ -e $HOME/.vimrc ]] && [[ `diff $(pwd)/.vimrc ~/.vimrc` ]]; then
  mv ~/.vimrc ~/.vimrc_backup
  cp $(pwd)/.vimrc ~/.vimrc
fi
if [[ ! -e $HOME/.vimrc ]]; then
  cp $(pwd)/.vimrc ~/.vimrc
fi

#copy plugin source files
if [[ ! -e $HOME/.vim/plug.vim ]]; then
  cp $(pwd)/.vim/plug.vim ~/vim/plug.vim
fi

if [[ ! -e $HOME/.vim/plugins_config.vim ]]; then
  cp $(pwd)/.vim/plug_config.vim ~/vim/plug_config.vim
fi


#install oh-my-zsh
if [[ ! -d $HOME/.oh-my-zsh ]]; then
  sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
fi
if [[ ! -d $HOME/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting ]]; then
  git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
fi
if [[ ! -d $HOME/.oh-my-zsh/custom/plugins/zsh-autosuggestions ]]; then
  git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
fi
if [[ ! -d $HOME/.oh-my-zsh/custom/themes/powerlevel10k ]]; then
  git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/powerlevel10k
fi

#backup and copy .zshrc
if [[ -e ~/.zshrc ]] && [[ `diff $(pwd)/.zshrc ~/.zshrc` ]]; then
  mv ~/.zshrc ~/.zshrc_backup
  cp $(pwd)/.zshrc ~/.zshrc
fi
if [[ ! -e ~/.zshrc ]]; then
  cp $(pwd)/.zshrc ~/.zshrc
fi
