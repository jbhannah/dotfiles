[[ -f "$HOME/.stowdir" ]] && export STOW_DIR=$(cat $HOME/.stowdir) # Set dotfiles directory

[[ -s "${ZDOTDIR:-$HOME}/.zprezto/runcoms/zshenv" ]] && source "${ZDOTDIR:-$HOME}/.zprezto/runcoms/zshenv" # Source Prezto

# system-wide environment settings for zsh(1)
if [ -x /usr/libexec/path_helper ]; then
  eval `/usr/libexec/path_helper -s`
fi

[[ -d "/Applications/Postgres.app/Contents/Versions/latest/bin" ]] && export PATH=/Applications/Postgres.app/Contents/Versions/latest/bin:$PATH
[[ -d "$HOME/bin" ]] && export PATH=$HOME/bin:$PATH
[[ -d "$HOME/Code" ]] && export GOPATH=$HOME/Code && export PATH=$GOPATH/bin:$PATH
command -v yarn > /dev/null 2>&1 && export PATH=`yarn global bin`:$PATH

[[ -d "$HOME/.cargo" ]] && source "$HOME/.cargo/env"
