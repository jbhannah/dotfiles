test -d $HOME/.cargo/bin
and not contains $HOME/.cargo/bin $PATH
and set -x PATH $HOME/.cargo/bin $PATH
