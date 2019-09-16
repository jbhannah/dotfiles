#!/bin/sh

platform=`uname -a`

echo "= Dotfiles Setup ="

if echo $platform | grep -q Darwin; then
  echo "== macOS Installation =="

  if ! command -v brew >/dev/null 2>&1; then
    echo "=== Installing Homebrew ==="
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  fi

  xcodeselect -s /Applications/Xcode.app

  brew tap Homebrew/bundle
  brew bundle

  [[ -f /etc/zshenv ]] && sudo mv /etc/zshenv /etc/zshrc
  # TODO: move /usr/local/bin to the top of /etc/paths
elif echo $platform | grep -q Linux; then
  echo "== Ubuntu Installation =="
  sudo apt-get install build-essential zsh vim-nox luajit python3 python3-dev python3-pip silversearcher-ag stow exuberant-ctags
  sudo -H pip3 install thefuck
fi

cd $HOME
chsh -s /bin/zsh
chmod 700 $HOME/.gnupg
