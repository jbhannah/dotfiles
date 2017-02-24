# dotfiles

Dotfiles and miscellanea. Inspired by [Thoughtbot's dotfiles][tb]. Designed and
tested on macOS Sierra and Ubuntu 16.04.

## Setup

### Prerequisites

  * Xcode and command line tools (macOS only)
  * Git
  * An account that can run as `sudo`

### Instructions

 1. Clone dotfiles:

        git clone https://github.com/jbhannah/dotfiles.git ~/.dotfiles && cd $_

 2. Bootstrap:

        ./bootstrap.sh

    This:

    * Installs [Homebrew][brew] and [Brew Bundle][bundle] on macOS
    * Installs dependencies with your platform's package manager
    * Clones [Prezto][prezto] and [dein.vim][dein]
    * Changes your shell to [`zsh`][zsh]

    The Vim plugins listed in `vimrc.bundles` will be installed the next time
    you launch Vim.

 3. On macOS, edit `/etc/paths` so that `/usr/local/bin` is at the top of the
    file.

 4. Launch a new terminal session.

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
  * Homebrew (macOS only)
  * Brew Bundle (macOS only)

See the contents of `vimrc.bundles` and `Brewfile` for other installed packages.

## Credits

See [`LICENSE`][license].

[tb]:      https://github.com/thoughtbot/dotfiles
[brew]:    http://brew.sh/
[bundle]:  https://github.com/Homebrew/homebrew-brewdler
[stow]:    https://www.gnu.org/software/stow/
[prezto]:  https://github.com/zsh-users/prezto
[dein]:    https://github.com/Shougo/dein.vim
[zsh]:     http://www.zsh.org/
[license]: https://github.com/jbhannah/dotfiles/blob/master/LICENSE
