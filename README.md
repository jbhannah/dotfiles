# dotfiles

Dotfiles and miscellanea. Inspired by [Thoughtbot's dotfiles][tb]. Designed and
tested on OS X Mavericks.

## Setup

 1. Install [Homebrew][brew].

 2. Clone dotfiles:

        git clone https://github.com/jbhannah/dotfiles.git ~/.dotfiles

 3. Install [rcm][], [The Silver Searcher][ag], and MacVim with (at minimum)
    LuaJIT from the Brewfile:

        brew bundle ~/.dotfiles/Brewfile

 4. Install dotfiles:

        rcup -d ~/.dotfiles -x Brewfile -x README.md -x LICENSE

## Maintenance

To add dotfiles, use the `mkrc` utility included with `rcm`:

        mkrc ~/.somefile

See the manpage for this utility for more information.

## Updating

The clone will be updated automatically whenever a new interactive shell is
opened. The `$DOTFILES_DIR` environment variable is set in `.zshenv` to the
location of the clone, and is used both in pulling updates and in telling
`rcup` where to look for dotfiles after the initial installation.

If any new files or Vim plugins were added, simply re-up:

    rcup

## Credits

See [LICENSE][lic].

[tb]:   https://github.com/thoughtbot/dotfiles
[brew]: http://brew.sh/
[rcm]:  https://github.com/thoughtbot/rcm
[ag]:   https://github.com/ggreer/the_silver_searcher
[lic]:  https://github.com/jbhannah/dotfiles/blob/master/LICENSE
