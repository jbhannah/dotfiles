[[ -n "${DOTFILES_DIR+x}" ]] && ( cd $DOTFILES_DIR; git pull 2>&1 >/dev/null ) # Update dotfiles

[[ -s "${ZDOTDIR:-$HOME}/.zprezto/runcoms/zshrc" ]] && source "${ZDOTDIR:-$HOME}/.zprezto/runcoms/zshrc" # Source Prezto

# Aliases
alias l="ls -alh"

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
