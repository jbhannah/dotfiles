# Source Prezto
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/runcoms/zshenv" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/runcoms/zshenv"
fi

if [[ -d "/Applications/Postgres.app/Contents/Versions/9.3/bin" ]]; then
  PATH=/Applications/Postgres.app/Contents/Versions/9.3/bin:$PATH
fi
