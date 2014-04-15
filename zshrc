[[ -n "${DOTFILES_DIR+x}" ]] && ( cd $DOTFILES_DIR; git pull &> /dev/null ) # Update dotfiles
( rcup & ) &> /dev/null

[[ -s "${ZDOTDIR:-$HOME}/.zprezto/runcoms/zshrc" ]] && source "${ZDOTDIR:-$HOME}/.zprezto/runcoms/zshrc" # Source Prezto

PROMPT=%B%F{magenta}%m%f\ $PROMPT
