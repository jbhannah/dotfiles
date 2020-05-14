set -l dir $HOME/Code/src/github.com/jbhannah/dotfiles

if type -q stow; and test -d $dir
    not set -q STOW_DIR
    and set -x STOW_DIR $dir

    set -l stow_args -R common -R unfold

    contains Darwin (uname)
    and set -l stow_args $stow_args -R desktop -R unfold-desktop

    stow -t $HOME $stow_args
end
