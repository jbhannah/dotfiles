if status is-interactive; and not set -q TMUX
    ssh-add --apple-load-keychain >/dev/null 2>&1
end
