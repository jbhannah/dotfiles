# dotfiles

Dotfiles and miscellanea. Inspired by [Thoughtbot's dotfiles][tb]. Designed and tested on OS X Mavericks.

## Setup

 1. Install [Homebrew][brew].

 2. Clone dotfiles:

        git clone https://github.com/jbhannah/dotfiles.git ~/Code/jbhannah/dotfiles

 3. Install [rcm][], [The Silver Searcher][ag], and MacVim with (at minimum) LuaJIT from the Brewfile:

        brew bundle ~/Code/jbhannah/dotfiles/Brewfile

 4. Install dotfiles:

        rcup -d ~/Code/jbhannah/dotfiles -x Brewfile -x README.md -x LICENSE

## Updating

Update clone and re-up:

    rcup

## Credits

See [LICENSE][lic].

[tb]:   https://github.com/thoughtbot/dotfiles
[brew]: http://brew.sh/
[rcm]:  https://github.com/thoughtbot/rcm
[ag]:   https://github.com/ggreer/the_silver_searcher
[lic]:  https://github.com/jbhannah/dotfiles/blob/master/LICENSE
