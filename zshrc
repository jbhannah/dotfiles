# Source Prezto
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/runcoms/zshrc" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/runcoms/zshrc"
fi

# Aliases
alias l="ls -alh"

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
