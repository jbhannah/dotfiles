if type -q fd
    set -l opts "--reverse --height=20"

    set -q FZF_DEFAULT_OPTS
    and test $FZF_DEFAULT_OPTS = $opts
    or set -Ux FZF_DEFAULT_OPTS $opts

    set -q FZF_COMPLETE
    and test $FZF_COMPLETE -eq 2
    or set -U FZF_COMPLETE 2

    set -l rg "rg --files --no-ignore-vcs --hidden"

    set -g FZF_DEFAULT_COMMAND
    and test $FZF_DEFAULT_COMMAND
    or set -Ux FZF_DEFAULT_COMMAND $rg

    set -l fd "fd --follow"
    set -l fd_t_d "--type directory"

    set -q FZF_CD_COMMAND
    or set -U FZF_CD_COMMAND "$fd $fd_t_d . \$dir"

    set -q FZF_CD_WITH_HIDDEN_COMMAND
    or set -U FZF_CD_WITH_HIDDEN_COMMAND "$fd $fd_t_d --hidden . \$dir"

    set -q FZF_FIND_FILE_COMMAND
    or set -U FZF_FIND_FILE_COMMAND "$fd --type file . \$dir"

    set -l exa "exa --group-directories-first -algh --color always"

    set -q FZF_PREVIEW_DIR_CMD
    and test $FZF_PREVIEW_DIR_CMD = $exa
    or set -U FZF_PREVIEW_DIR_CMD $exa

    set -l bat "bat --color always --number"

    set -q FZF_PREVIEW_FILE_CMD
    and test $FZF_PREVIEW_FILE_CMD = $bat
    or set -U FZF_PREVIEW_FILE_CMD $bat
end
