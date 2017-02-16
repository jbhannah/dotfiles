[[ -n "${DOTFILES_DIR+x}" ]] && ( cd $DOTFILES_DIR; git stash --quiet; git pull --quiet --rebase; git stash pop --quiet ) &> /dev/null # Update dotfiles
( rcup & ) &> /dev/null

[[ -s "${ZDOTDIR:-$HOME}/.zprezto/runcoms/zshrc" ]] && source "${ZDOTDIR:-$HOME}/.zprezto/runcoms/zshrc" # Source Prezto

PROMPT=%B%F{magenta}%m%f\ $PROMPT

[[ -s "$HOME/.aliases" ]] && source "$HOME/.aliases" # Aliases

# added by Travis gem
[ -f /Users/jbhannah/.travis/travis.sh ] && source /Users/jbhannah/.travis/travis.sh
