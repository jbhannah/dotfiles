# vi:filetype=zsh
[[ -s "${ZDOTDIR:-$HOME}/.zprezto/runcoms/zprofile" ]] && source "${ZDOTDIR:-$HOME}/.zprezto/runcoms/zprofile" # Source Prezto

# Editors
if command -v code > /dev/null 2>&1; then
  export VISUAL="code -w"
elif command -v nvim > /dev/null 2>&1; then
  export VISUAL=nvim
  export NVIM_TUI_ENABLE_TRUE_COLOR=1
else
  export VISUAL=vim
fi

export EDITOR=$VISUAL

# Timezone
export TZ=US/Arizona

command -v xcrun > /dev/null 2>&1 && export CFLAGS="$CFLAGS -I$(xcrun --show-sdk-path)/usr/include"

[[ -f "${ZDOTDIR:-$HOME}/.zprofile.local" ]] && source "${ZDOTDIR:-$HOME}/.zprofile.local"

# Created by `userpath` on 2019-11-12 22:55:12
export PATH="$PATH:/Users/jessehannah/.local/bin"
