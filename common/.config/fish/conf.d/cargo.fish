status is-interactive
and test -d $HOME/.cargo/bin
and not contains $HOME/.cargo/bin $PATH
and set -gx PATH $HOME/.cargo/bin $PATH
