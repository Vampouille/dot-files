#!/bin/bash

INSTALL_TMUX=1
INSTALL_ZSH=1
INSTALL_VIM=1
INSTALL_HTOP=1

DOTFILEBASEDIR=$(dirname "$0")
cd $HOME

if [ $INSTALL_ZSH == "1"]; then

  # Install zsh configuration
  if [ ! -L .oh-my-zsh ]; then
    echo "No oh-my-zsh in home"
    echo ln -s $DOTFILEBASEDIR/dot-oh-my-zsh .oh-my-zsh
  fi

  if [ ! -r .zshrc ]; then
    echo "No .zshrc in home"
    echo ln -s $DOTFILEBASEDIR/dot-zshrc .zshrc
  fi

  if [ ! -d .zsh ]; then
    echo "No .zsh in home"
    echo ln -s $DOTFILEBASEDIR/dot-zsh .zsh
  fi

fi

if [ $INSTALL_TMUX == "1"]; then

  # Install tmux configuration
  if [ ! -L .tmux.conf ]; then
    echo "No .tmux.conf in home"
    echo ln -s $DOTFILEBASEDIR/dot-tmux.conf .tmux.conf
  fi

  if [ ! -r .tmux ]; then
    echo "No .tmux in home"
    echo ln -s $DOTFILEBASEDIR/dot-tmux .tmux
  fi

fi


if [ $INSTALL_VIM == "1"]; then

  # Install vim configuration
  if [ ! -r .vimrc ]; then
    echo "No vimrc in home"
    echo ln -s $DOTFILEBASEDIR/dot-vimrc .vimrc
  fi

  if [ ! -d .vim ]; then
    echo "No vim in home"
    echo ln -s $DOTFILEBASEDIR/dot-vim .vim
  fi

fi

if [ $INSTALL_HTOP == "1"]; then

  # Install htop configuration
  if [ ! -L .config/htop/htoprc ]; then
    echo "No custom htop configuration"
    if [ ! -d .config/htop/ ]; then
      mkdir -p .config/htop/
    fi
    echo "ln -s $DOTFILEBASEDIR/htoprc .config/htop/htoprc"
  fi

fi
