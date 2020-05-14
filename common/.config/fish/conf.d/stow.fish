set -l dir $HOME/Code/src/github.com/jbhannah/dotfiles

if type -q stow; and test -d $dir
    set -x STOW_DIR $dir
end
