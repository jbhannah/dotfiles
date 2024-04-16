if status is-interactive
    set -gx FZF_DEFAULT_OPTS "--reverse --height=20"

    if command -sq fd
        set -gx FZF_DEFAULT_COMMAND "fd --type file --hidden . \$dir"
        set -gx FZF_CTRL_T_COMMAND $FZF_DEFAULT_COMMAND

        set -l fd_t_d "--type directory"
        set -gx FZF_ALT_C_COMMAND "fd $fd_t_d . \$dir"
    else
        command -sq rg
        and set -gx FZF_DEFAULT_COMMAND "rg --files --hidden"
    end

    command -sq exa
    and set -gx FZF_PREVIEW_DIR_CMD "exa --group-directories-first -algh --color always"

    command -sq bat
    and set -gx FZF_PREVIEW_FILE_CMD "bat --color always --number"
end

fzf --fish | source
