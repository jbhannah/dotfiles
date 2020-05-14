set -l dir $HOME/Code/src/github.com/jbhannah/dotfiles

type -q stow
and test -d $dir
and not set -q STOW_DIR
and set -x STOW_DIR $dir
