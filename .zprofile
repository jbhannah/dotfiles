# vi:filetype=zsh
[[ -s "${ZDOTDIR:-$HOME}/.zprezto/runcoms/zprofile" ]] && source "${ZDOTDIR:-$HOME}/.zprezto/runcoms/zprofile" # Source Prezto

# Editors
export VISUAL=vim
if command -v nvim > /dev/null 2>&1; then
  export VISUAL=nvim
  export NVIM_TUI_ENABLE_TRUE_COLOR=1
fi

command -v code > /dev/null 2>&1 && export VISUAL="code -w"

export EDITOR=$VISUAL

# Timezone
export TZ=US/Arizona

command -v xcrun > /dev/null 2>&1 && export CFLAGS="$CFLAGS -I$(xcrun --show-sdk-path)/usr/include"

[[ -f "${ZDOTDIR:-$HOME}/.zprofile.local" ]] && source "${ZDOTDIR:-$HOME}/.zprofile.local"
