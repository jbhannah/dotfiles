#!/bin/sh

platform=`uname -a`
dotfiles=`dirname $0`

echo "= Dotfiles Setup ="

if echo $platform | grep -q Darwin; then
  echo "== OS X Installation =="

  if ! command brew >/dev/null 2>&1; then
    echo "=== Installing Homebrew ==="
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  fi

  brew tap Homebrew/bundle
  brew bundle

  sudo mv /etc/zshenv /etc/zshrc
  # TODO: move /usr/local/bin to the top of /etc/paths
elif echo $platform | grep -q Ubuntu; then
  echo "== Ubuntu Installation =="
  # TODO: curl rcm, extract, sudo make install
  # TODO: install full vim-nox with Lua and other packages
  echo "Not yet implemented!"
  exit 1
fi

cd ~
rcup -d $dotfiles -x bootstrap.sh -x Brewfile -x README.md -x LICENSE
chsh -s /bin/zsh
cd $dotfiles
