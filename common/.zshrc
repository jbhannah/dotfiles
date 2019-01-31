if [[ ! $TMUX ]]; then
  [[ $STOW_DIR ]] && ( cd $STOW_DIR; git stash --quiet; git pull --quiet --rebase; git stash pop --quiet ) &> /dev/null # Update dotfiles
  ( $STOW_DIR/up.sh & ) &> /dev/null
fi

[[ -s "${ZDOTDIR:-$HOME}/.zprezto/runcoms/zshrc" ]] && source "${ZDOTDIR:-$HOME}/.zprezto/runcoms/zshrc" # Source Prezto

PROMPT=%B%F{magenta}%m%f\ $PROMPT

[[ -s "$HOME/.aliases" ]] && source "$HOME/.aliases" # Aliases

eval "$(fasd --init auto)"

# added by Travis gem
[ -f $HOME/.travis/travis.sh ] && source $HOME/.travis/travis.sh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
