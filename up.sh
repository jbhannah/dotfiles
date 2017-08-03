#!/usr/bin/env zsh
if [ -d $HOME/.zprezto/.git ]; then
  echo "Updating Prezto...\c"
  cd $HOME/.zprezto
  ( git remote rm origin && git remote add origin https://github.com/sorin-ionescu/prezto.git ) &> /dev/null
  ( git pull && git submodule update --init --recursive ) &> /dev/null
  echo "done!"
else
  echo "Installing Prezto...\c"
  [ -d $HOME/.zprezto ] && rm -rf $HOME/.zprezto
  ( git clone https://github.com/sorin-ionescu/prezto.git $HOME/.zprezto && ( cd $HOME/.zprezto && git submodule update --init --recursive ) ) &> /dev/null
  echo "done!"
fi

if [ ! -d $HOME/.vim/bundle/repos/github.com/Shougo/dein.vim ]; then
  echo "Installing Dein.vim...\c"
  [ -d $HOME/.vim/bundle ] && rm -rf $HOME/.vim/bundle
  ( git clone https://github.com/Shougo/dein.vim $HOME/.vim/bundle/repos/github.com/Shougo/dein.vim ) &> /dev/null
  echo "done!"
fi

if [ ! -d $HOME/.emacs.d ]; then
  echo "Installing Spacemacs...\c"
  ( git clone https://github.com/syl20bnr/spacemacs $HOME/.emacs.d ) &> /dev/null
  echo "done!"
fi

if [[ $STOW_DIR ]]; then
  echo "Stowing common dotfiles...\c"
  stow --no-folding -t $HOME -R common
  echo "done!"
fi

echo "Pruning broken dotfile links...\c"
for dotted in $HOME/.*; do
  find -L $dotted -type l | xargs rm
done
echo "done!"
