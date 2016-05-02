[[ -h "$HOME/.zshenv" ]] && export DOTFILES_DIR=$(dirname $(readlink $HOME/.zshenv)) # Set dotfiles directory

[[ -s "${ZDOTDIR:-$HOME}/.zprezto/runcoms/zshenv" ]] && source "${ZDOTDIR:-$HOME}/.zprezto/runcoms/zshenv" # Source Prezto

[[ -d "/Applications/Postgres.app/Contents/Versions/latest/bin" ]] && export PATH=/Applications/Postgres.app/Contents/Versions/latest/bin:$PATH
[[ -d "$HOME/bin" ]] && export PATH=$HOME/bin:$PATH

[[ -d "$HOME/Code" ]] && export GOPATH=$HOME/Code && export PATH=$GOPATH/bin:$PATH
