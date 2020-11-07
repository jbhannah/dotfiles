#!/bin/bash

platform=`uname -a`

echo "= Dotfiles Setup ="

echo "== Initialize Submodules =="
git submodule update --recursive --init

if echo $platform | grep -q Darwin; then
  echo "== macOS Installation =="

  if ! command -v brew >/dev/null 2>&1; then
    echo "=== Installing Homebrew ==="
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
  fi

  brew bundle --file common/.Brewfile
  [[ -f /etc/zshenv ]] && sudo mv /etc/zshenv /etc/zshrc
  [[ -f /etc/zprofile ]] && sudo mv /etc/zprofile "/etc/zprofile~orig"

  defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false
elif echo $platform | grep -q Linux; then
  echo "== Ubuntu Installation =="
  sudo apt-get install build-essential zsh vim-nox luajit python3 python3-dev python3-pip silversearcher-ag stow exuberant-ctags stow
  sudo -H pip3 install thefuck
fi

echo "== Installing Dotfiles =="
stow -t $HOME -S common -S unfold

if [[ $SHELL != "/usr/local/bin/fish" ]]; then
  echo /usr/local/bin/fish | sudo tee -a /etc/shells
  chsh -s /usr/local/bin/fish
fi
