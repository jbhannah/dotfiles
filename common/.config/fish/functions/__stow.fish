if type -q stow
    function __stow
        if not set -q STOW_DIR
            set -l dir $HOME/Code/src/github.com/jbhannah/dotfiles

            test -d $dir
            and set -Ux STOW_DIR $dir
        end

        if set -q STOW_DIR
            if not set -q stow_command
                set -l stow_args -R common -R unfold

                contains Darwin (uname)
                and set -l stow_args $stow_args -R desktop -R unfold-desktop

                set -U stow_command stow -t $HOME $stow_args
            end

            abbr -a -g sdf $stow_command

            if not set -q TMUX
                pushd $STOW_DIR
                git stash push --include-untracked --quiet
                git pull --rebase --quiet
                git submodule update --quiet --recursive
                git stash pop --quiet
                popd

                $stow_command
            end
        end
    end
end
