#!/bin/bash

platform=`uname -a`

echo "= Dotfiles Setup ="

if echo $platform | grep -q Darwin; then
  if ! command -v brew >/dev/null 2>&1; then
    echo "=== Installing Homebrew ==="
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
  fi

  defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false
elif echo $platform | grep -q Linux; then
  echo "== Installing Dependencies =="
  sudo apt-get install build-essential zsh vim-nox luajit python3 python3-dev python3-pip silversearcher-ag stow exuberant-ctags stow
  sudo -H pip3 install thefuck
fi

echo "== Cloning Dotfiles Repository =="
STOW_DIR=$HOME/Code/src/github.com/jbhannah/dotfiles
git clone https://github.com/jbhannah/dotfiles.git $STOW_DIR
cd $STOW_DIR
git submodule update --recursive --init

if echo $platform | grep -q Darwin; then
  echo "== Installing Homebrew Packages =="
  brew bundle --file common/.Brewfile
fi

echo "== Installing Dotfiles =="
stow -t $HOME -S common -S unfold

if [[ $SHELL != "/usr/local/bin/fish" ]]; then
  echo /usr/local/bin/fish | sudo tee -a /etc/shells
  chsh -s /usr/local/bin/fish
fi
