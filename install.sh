#!/bin/bash

INSTALL_TMUX=1
INSTALL_ZSH=1
INSTALL_VIM=1
INSTALL_HTOP=1

DOTFILEBASEDIR="$( cd "$(dirname "$0")" ; pwd -P )"
echo "DOTFILEBASEDIR=${DOTFILEBASEDIR}"
cd $HOME

if [ $INSTALL_ZSH == "1" ]; then

  # Install zsh configuration
  if [ ! -L .oh-my-zsh ]; then
    ln -s $DOTFILEBASEDIR/dot-oh-my-zsh .oh-my-zsh
    echo "oh-my-zsh config installed"
  else
    echo "oh-my-zsh config already installed"
  fi

  if [ ! -L .oh-my-zsh/themes/agnosterzak.zsh-theme ]; then
    ln -s $DOTFILEBASEDIR/agnosterzak.zsh-theme .oh-my-zsh/themes/agnosterzak.zsh-theme
    echo "agnosterzak theme installed"
  else
    echo "agnosterzak theme already installed"
  fi

  if [ ! -L .oh-my-zsh/plugins/zsh-syntax-highlighting ]; then
    ln -s $DOTFILEBASEDIR/zsh-syntax-highlighting .oh-my-zsh/plugins/zsh-syntax-highlighting
    echo "syntax highlighting plugin installed"
  else
    echo "syntax highlighting plugin already installed"
  fi

  if [ ! -r .zshrc ]; then
    ln -s $DOTFILEBASEDIR/dot-zshrc .zshrc
    echo ".zshrc installed in home"
  else
    echo ".zshrc already installed"
  fi

  if [ ! -d .zsh ]; then
    ln -s $DOTFILEBASEDIR/dot-zsh .zsh
    echo ".zsh installed in home"
  else
    echo ".zsh already installed"
  fi

fi

if [ $INSTALL_TMUX == "1" ]; then

  # Install tmux configuration
  if [ ! -L .tmux.conf ]; then
    ln -s $DOTFILEBASEDIR/dot-tmux.conf .tmux.conf
    echo ".tmux.conf installed in home"
  else
    echo ".tmux.conf already installed"
  fi

  if [ ! -r .tmux ]; then
    ln -s $DOTFILEBASEDIR/dot-tmux .tmux
    echo ".tmux installed in home"
  else
    echo ".tmux already installed"
  fi

fi


if [ $INSTALL_VIM == "1" ]; then

  # Install vim configuration
  if [ ! -r .vimrc ]; then
    ln -s $DOTFILEBASEDIR/dot-vimrc .vimrc
    echo ".vimrc installed in home"
  else
    echo ".vimrc already installed"
  fi

  if [ ! -d .vim ]; then
    ln -s $DOTFILEBASEDIR/dot-vim .vim
    echo ".vim installed in home"
  else
    echo ".vim already installed"
  fi

fi

if [ $INSTALL_HTOP == "1" ]; then

  # Install htop configuration
  if [ ! -L .config/htop/htoprc ]; then
    if [ ! -d .config/htop/ ]; then
      mkdir -p .config/htop/
    fi
    ln -s $DOTFILEBASEDIR/htoprc .config/htop/htoprc
    echo "custom htop configuration installed"
  else
    echo "custom htop configuration already installed"
  fi

fi
