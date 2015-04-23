[[ -h "$HOME/.zshenv" ]] && export DOTFILES_DIR=$(dirname $(readlink $HOME/.zshenv)) # Set dotfiles directory

[[ -s "${ZDOTDIR:-$HOME}/.zprezto/runcoms/zshenv" ]] && source "${ZDOTDIR:-$HOME}/.zprezto/runcoms/zshenv" # Source Prezto

[[ -d "/Applications/Postgres.app/Contents/Versions/9.4/bin" ]] && PATH=/Applications/Postgres.app/Contents/Versions/9.4/bin:$PATH
[[ -d "$HOME/bin" ]] && PATH=$HOME/bin:$PATH
