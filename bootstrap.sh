#!/bin/sh

platform=`uname -a`
dotfiles="`dirname \"$0\"`"
export STOW_DIR="`( cd \"$dotfiles\" && pwd )`"
echo $STOW_DIR > $HOME/.stowdir

echo "= Dotfiles Setup ="

if echo $platform | grep -q Darwin; then
  echo "== macOS Installation =="

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
  sudo apt-get install build-essential zsh vim-nox luajit python3 python3-dev python3-pip silversearcher-ag stow exuberant-ctags
  sudo -H pip3 install thefuck
fi

cd $HOME
ls -A -1 $STOW_DIR/common | xargs rm -rf
ls -A -1 $STOW_DIR/desktop | xargs rm -rf
ls -A -1 $STOW_DIR/server | xargs rm -rf
$STOW_DIR/up.sh
chsh -s /bin/zsh
cd $dotfiles
