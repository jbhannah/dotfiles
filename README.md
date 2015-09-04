# dotfiles

Dotfiles and miscellanea. Inspired by [Thoughtbot's dotfiles][tb]. Designed and
tested on OS X Mavericks and OS X Yosemite.

## Setup

### Prerequisites

  * Xcode and command line tools
  * Git

### Instructions

 1. Install [Homebrew][brew] and [Brew Bundle][bundle]:

        ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
        brew tap Homebrew/bundle

 2. Clone dotfiles:

        git clone https://github.com/jbhannah/dotfiles.git ~/.dotfiles && cd $_

 3. Install the contents of the `Brewfile`:

        brew bundle

 4. Install dotfiles:

        cd ~ && rcup -d ~/.dotfiles -x bootstrap.sh -x Brewfile -x README.md -x LICENSE

    This will also clone [Prezto][prz] and [NeoBundle][nb] and install the Vim
    plugins specified in `vimrc.bundles`.

 5. Set your shell to [`zsh`][zsh]:

        chsh -s /bin/zsh

 6. Fix two files in `/etc` that will cause path problems:
    * Move `/etc/zshenv` to `/etc/zshrc`.
    * Edit `/etc/paths` so that `/usr/local/bin` is at the top of the file.

 7. Launch a new terminal session.

## Maintenance

To add dotfiles, use the `mkrc` utility included with `rcm`:

    mkrc ~/.somefile

See the man page for this utility for more information.

## Updating

In `.zshenv`, `$DOTFILES_DIR` is set to the location of the clone. Whenever a
new interactive shell is opened, `.zshrc` silently `cd`s to `$DOTFILES_DIR` and
pulls from Git, and `rcup` is run to silently update Prezto and the installed
Vim plugins. If, for any reason, you want to manually update without opening a
new shell, simply run:

    rcup

You may have to launch a new shell anyway, however, for any changes to `zsh`
configuration files or any updates to Prezto to take effect.

## Contents

  * Prezto
  * [Base16 Shell](https://github.com/chriskempson/base16-shell)

See the contents of `vimrc.bundles` and `Brewfile` for other installed packages.

## Credits

See [`LICENSE`][lic].

[tb]:      https://github.com/thoughtbot/dotfiles
[brew]:    http://brew.sh/
[bundle]:  https://github.com/Homebrew/homebrew-brewdler
[prz]:     https://github.com/sorin-ionescu/prezto
[nb]:      https://github.com/Shougo/neobundle.vim
[zsh]:     http://www.zsh.org/
[lic]:     https://github.com/jbhannah/dotfiles/blob/master/LICENSE
