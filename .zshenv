[[ -s "${ZDOTDIR:-$HOME}/.zprezto/runcoms/zshenv" ]] && source "${ZDOTDIR:-$HOME}/.zprezto/runcoms/zshenv" # Source Prezto

# system-wide environment settings for zsh(1)
if [ -x /usr/libexec/path_helper ]; then
  eval `/usr/libexec/path_helper -s`
fi

[[ -d "/Applications/Postgres.app/Contents/Versions/latest/bin" ]] && export PATH=/Applications/Postgres.app/Contents/Versions/latest/bin:$PATH
[[ -d "$HOME/bin" ]] && export PATH=$HOME/bin:$PATH
[[ -d "$HOME/Code" ]] && export GOPATH=$HOME/Code && export PATH=$GOPATH/bin:$PATH
command -v yarn > /dev/null 2>&1 && export PATH=`yarn global bin`:$PATH

[[ -d "$HOME/.cargo" ]] && source "$HOME/.cargo/env"
test -s "$HOME/.kiex/scripts/kiex" && source "$HOME/.kiex/scripts/kiex"

[[ -d "$(brew --prefix python)" ]] && export PATH=$(brew --prefix python)/libexec/bin:$PATH

command -v rustc 1>/dev/null 2>&1 && RUST_SRC_PATH="$(rustc --print sysroot)/lib/rustlib/src/rust/src"
[[ -d $RUST_SRC_PATH ]] && export RUST_SRC_PATH=$RUST_SRC_PATH

