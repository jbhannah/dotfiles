#!/bin/bash

platform=`uname -a`

echo "= Dotfiles Setup ="

echo "== Initialize Submodules =="
git submodule update --recursive --init

if echo $platform | grep -q Darwin; then
  echo "== macOS Installation =="

  if ! command -v brew >/dev/null 2>&1; then
    echo "=== Installing Homebrew ==="
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  fi

  brew bundle
  [[ -f /etc/zshenv ]] && sudo mv /etc/zshenv /etc/zshrc
  [[ -f /etc/zprofile ]] && sudo mv /etc/zprofile "/etc/zprofile~orig"
elif echo $platform | grep -q Linux; then
  echo "== Ubuntu Installation =="
  sudo apt-get install build-essential zsh vim-nox luajit python3 python3-dev python3-pip silversearcher-ag stow exuberant-ctags stow
  sudo -H pip3 install thefuck
fi

echo "== Installing Dotfiles =="
stow -t $HOME -S common -S unfold

[[ $SHELL == "/bin/zsh" ]] || chsh -s /bin/zsh
