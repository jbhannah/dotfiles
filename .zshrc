if [[ ! $TMUX ]] && (( $+commands[yadm] )); then
  yadm pull > /dev/null 2>&1
  yadm bootstrap > /dev/null 2>&1 &
fi

[[ -s "${ZDOTDIR:-$HOME}/.zprezto/runcoms/zshrc" ]] && source "${ZDOTDIR:-$HOME}/.zprezto/runcoms/zshrc" # Source Prezto

PROMPT=%B%F{magenta}%m%f\ $PROMPT

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
