if status is-interactive
    command -sq starship; and starship init fish | source

    if test -f $HOME/.config/op/plugins.sh
        source $HOME/.config/op/plugins.sh
    end
end
