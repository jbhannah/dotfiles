if status is-interactive
    test -d $HOME/Code
    and not set -q GOPATH
    and set -gx GOPATH $HOME/Code

    test -d $HOME/Code/bin
    and not contains $HOME/Code/bin $PATH
    and set -gx PATH $HOME/Code/bin $PATH
end
