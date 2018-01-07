#!/bin/sh

platform=`uname -a`
dotfiles="`dirname \"$0\"`"
export STOW_DIR="`( cd \"$dotfiles\" && pwd )`"
echo $STOW_DIR > $HOME/.stowdir

echo "= Dotfiles Setup ="

if echo $platform | grep -q Darwin; then
  echo "== macOS Installation =="

  if ! command -v brew >/dev/null 2>&1; then
    echo "=== Installing Homebrew ==="
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  fi

  [[ -f /etc/zshenv ]] && sudo mv /etc/zshenv /etc/zshrc
  # TODO: move /usr/local/bin to the top of /etc/paths
elif echo $platform | grep -q Ubuntu; then
  echo "== Ubuntu Installation =="
  sudo apt-get install build-essential curl file git python-setuptools
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install.sh)"
fi

brew tap Homebrew/bundle
brew bundle

rustup toolchain install stable

cd $HOME
ls -A -1 $STOW_DIR/common | xargs rm -rf
ls -A -1 $STOW_DIR/desktop | xargs rm -rf
ls -A -1 $STOW_DIR/server | xargs rm -rf
$STOW_DIR/up.sh
chsh -s /bin/zsh
cd $dotfiles
