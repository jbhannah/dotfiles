[[ -n "${DOTFILES_DIR+x}" ]] && ( cd $DOTFILES_DIR; git pull &> /dev/null ) # Update dotfiles
( rcup & ) &> /dev/null

[[ -s "${ZDOTDIR:-$HOME}/.zprezto/runcoms/zshrc" ]] && source "${ZDOTDIR:-$HOME}/.zprezto/runcoms/zshrc" # Source Prezto

# Aliases
alias gst="git status"
alias l="ls -alh"

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
