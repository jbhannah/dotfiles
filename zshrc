[[ -n "${DOTFILES_DIR+x}" ]] && ( cd $DOTFILES_DIR; git pull &> /dev/null ) # Update dotfiles
( rcup & ) &> /dev/null

[[ -s "${ZDOTDIR:-$HOME}/.zprezto/runcoms/zshrc" ]] && source "${ZDOTDIR:-$HOME}/.zprezto/runcoms/zshrc" # Source Prezto

# Base16 Shell
BASE16_SCHEME="tomorrow"
BASE16_SHELL="$HOME/.config/base16-shell/base16-$BASE16_SCHEME.dark.sh"
[[ -s $BASE16_SHELL ]] && . $BASE16_SHELL

PROMPT=%B%F{magenta}%m%f\ $PROMPT

[[ -s "$HOME/.aliases" ]] && source "$HOME/.aliases" # Aliases

command -v docker-machine >/dev/null 2>&1 && $(docker-machine env $(docker-machine ls -q) 2>/dev/null)

# added by Travis gem
[ -f /Users/jbhannah/.travis/travis.sh ] && source /Users/jbhannah/.travis/travis.sh
