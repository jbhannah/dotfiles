if type -q fd
    set -l opts "--no-sort --reverse --height=20"

    set -q FZF_DEFAULT_OPTS
    and test $FZF_DEFAULT_OPTS = $opts
    or set -Ux FZF_DEFAULT_OPTS $opts

    set -q FZF_COMPLETE
    and test $FZF_COMPLETE -eq 0
    or set -U FZF_COMPLETE 0

    set -l fd "fd --follow"
    set -l fd_t_d "--type directory"

    set -q FZF_CD_COMMAND
    or set -U FZF_CD_COMMAND "$fd $fd_t_d . \$dir"

    set -q FZF_CD_WITH_HIDDEN_COMMAND
    or set -U FZF_CD_WITH_HIDDEN_COMMAND "$fd $fd_t_d --hidden . \$dir"

    set -q FZF_FIND_FILE_COMMAND
    or set -U FZF_FIND_FILE_COMMAND "$fd --type file . \$dir"
end
