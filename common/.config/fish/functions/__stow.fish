function __stow
    if not set -q STOW_DIR
        set -l dir $HOME/Code/src/github.com/jbhannah/dotfiles

        if type -q stow; and test -d $dir
            not set -q STOW_DIR
            and set -Ux STOW_DIR $dir
        end
    end

    if set -q STOW_DIR
        if not set -q TMUX
            pushd $STOW_DIR
            git stash push --include-untracked --quiet
            git pull --rebase --quiet
            git submodule update --recursive
            git stash pop --quiet
            popd
        end

        if not set -q stow_command
            set -l stow_args -R common -R unfold

            contains Darwin (uname)
            and set -l stow_args $stow_args -R desktop -R unfold-desktop

            set -U stow_command stow -t $HOME $stow_args
        end

        abbr -a -g sdf $stow_command
        $stow_command
    end
end
