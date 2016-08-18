[[ -s "${ZDOTDIR:-$HOME}/.zprezto/runcoms/zprofile" ]] && source "${ZDOTDIR:-$HOME}/.zprezto/runcoms/zprofile" # Source Prezto

# Editors
export VISUAL=vim

if command -v nvim > /dev/null 2>&1; then
  export VISUAL=nvim
  export NVIM_TUI_ENABLE_TRUE_COLOR=1
fi
export EDITOR=$VISUAL

# Timezone
export TZ=US/Arizona
