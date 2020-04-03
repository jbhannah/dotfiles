export STOW_DIR=$HOME/Code/src/github.com/jbhannah/dotfiles

if [[ ! $TMUX ]] && (( $+commands[stow] )); then
  cd "$HOME/Code/src/github.com/jbhannah/dotfiles"
  git pull
  stow -t $HOME -R common -R unfold
  cd $HOME
fi

eval "$(starship init zsh)"

[[ -s "${ZDOTDIR:-$HOME}/.zprezto/runcoms/zshrc" ]] && source "${ZDOTDIR:-$HOME}/.zprezto/runcoms/zshrc" # Source Prezto

[[ -s "$HOME/.aliases" ]] && source "$HOME/.aliases" # Aliases

eval "$(fasd --init auto)"

export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

# added by Travis gem
[ -f $HOME/.travis/travis.sh ] && source $HOME/.travis/travis.sh

[ -f $HOME/.fzf.zsh ] && source $HOME/.fzf.zsh
[ -f $HOME/.fubectl/fubectl.source ] && source $HOME/.fubectl/fubectl.source

# Created by `userpath` on 2019-11-12 22:55:12
export PATH="$PATH:/Users/jessehannah/.local/bin"
