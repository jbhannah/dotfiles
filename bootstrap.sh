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
elif echo $platform | grep -q Ubuntu; then
  echo "== Ubuntu Installation =="
  echo "Not yet implemented!"
  exit 1
fi

cd ~
rcup -d $dotfiles -x bootstrap.sh -x Brewfile -x README.md -x LICENSE
chsh -s /bin/zsh
cd $dotfiles
