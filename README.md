# dotfiles

Dotfiles and miscellanea. Inspired by [Thoughtbot's dotfiles][tb]. Designed and
tested on macOS Sierra and Ubuntu 16.04.

## Setup

### Prerequisites

#### macOS

  * Xcode and command line tools
  * Git
  * An account that can run as `sudo`

#### Ubuntu

  * An account that can run as `sudo`

### Instructions

 1. Install [Homebrew][brew] and [Brew Bundle][bundle]:

        ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
        brew tap Homebrew/bundle

 2. Clone dotfiles:

        git clone https://github.com/jbhannah/dotfiles.git ~/.dotfiles && cd $_

 3. Install the contents of the `Brewfile`:

        brew bundle

 4. Install dotfiles with [Stow][stow]:

        ./bootstrap.sh

    This will also clone [Prezto][prz] and [Dein.vim][dv] and change your shell
    to [`zsh`][zsh]. The Vim plugins specified in `vimrc.bundles` will be
    installed the next time you run Vim.

 5. On macOS, edit `/etc/paths` so that `/usr/local/bin` is at the top of the
    file.

 6. Launch a new terminal session.

## Maintenance

Move the file into the appropriate package and run

    $STOW_DIR/up.sh

TODO: learn how the `--adopt` option works.

## Updating

In `.zshenv`, `$STOW_DIR` is set to the location of the clone. Whenever a
new interactive shell is opened, `.zshrc` silently `cd`s to `$STOW_DIR` and
pulls from Git, and `up.sh` is run to silently update Prezto and add any new
files. If, for any reason, you want to manually update without opening a new
shell, simply run:

    $STOW_DIR/up.sh

You may have to launch a new shell anyway, however, for any changes to `zsh`
configuration files or any updates to Prezto to take effect.

## Contents

  * Prezto
  * Dein.vim

See the contents of `vimrc.bundles` and `Brewfile` for other installed packages.

## Credits

See [`LICENSE`][lic].

[tb]:      https://github.com/thoughtbot/dotfiles
[brew]:    http://brew.sh/
[bundle]:  https://github.com/Homebrew/homebrew-brewdler
[stow]:    https://www.gnu.org/software/stow/
[prz]:     https://github.com/zsh-users/prezto
[dv]:      https://github.com/Shougo/dein.vim
[zsh]:     http://www.zsh.org/
[lic]:     https://github.com/jbhannah/dotfiles/blob/master/LICENSE
