test -d $HOME/Code
and not set -q GOPATH
and set -x GOPATH $HOME/Code

test -d $HOME/Code/bin
and not contains $HOME/Code/bin $PATH
and set -x PATH $HOME/Code/bin $PATH
