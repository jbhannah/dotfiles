# dotfiles

Dotfiles and miscellanea. Inspired by [Thoughtbot's dotfiles][tb]. Designed and
tested on OS X Mavericks.

## Setup

 1. Install [Homebrew][brew].

 2. Clone dotfiles:

        git clone https://github.com/jbhannah/dotfiles.git ~/.dotfiles

 3. Install [`rcm`][rcm], [The Silver Searcher][ag], and MacVim with (at
    minimum) LuaJIT from the `Brewfile`:

        brew bundle ~/.dotfiles/Brewfile

 4. Install dotfiles:

        rcup -d ~/.dotfiles -x Brewfile -x README.md -x LICENSE

    This will also clone [Prezto][prz] and [Vundle.vim][vun] and install the Vim
    plugins specified in `vimrc.bundles`.

 5. Set your shell to [`zsh`][zsh]:

        chsh -s /bin/zsh

 6. Launch a new terminal session.

## Maintenance

To add dotfiles, use the `mkrc` utility included with `rcm`:

    mkrc ~/.somefile

See the man page for this utility for more information.

## Updating

In `.zshenv`, `$DOTFILES_DIR` is set to the location of the clone. Whenever a
new interactive shell is opened, `zsh` silently `cd`s to `$DOTFILES_DIR` and
pulls from Git, and `rcup` is run to silently update Prezto and the installed
Vim plugins. If, for any reason, you want to manually update without opening a
new shell, simply run:

    rcup

You may have to launch a new shell anyway, however, for any changes to `zsh`
configuration files or any updates to Prezto to take effect.

## Credits

See [`LICENSE`][lic].

[tb]:   https://github.com/thoughtbot/dotfiles
[brew]: http://brew.sh/
[rcm]:  https://github.com/thoughtbot/rcm
[ag]:   https://github.com/ggreer/the_silver_searcher
[prz]:  https://github.com/sorin-ionescu/prezto
[vun]:  https://github.com/gmarik/Vundle.vim
[zsh]:  http://www.zsh.org/
[lic]:  https://github.com/jbhannah/dotfiles/blob/master/LICENSE
