# dotfiles

Dotfiles and miscellanea. Inspired by [Thoughtbot's dotfiles][tb]. Designed and
tested on OS X Mavericks.

## Setup

### Prerequisites

  * Xcode and command line tools
  * Git

### Instructions

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

### Vim plugins

  * Vundle
  * [Base16 Vim](https://github.com/chriskempson/base16-vim)
  * [csv.vim](https://github.com/chrisbra/csv.vim)
  * [vim-airline](https://github.com/bling/vim-airline)
  * [rename.vim](https://github.com/danro/rename.vim)
  * [EditorConfig](https://github.com/editorconfig/editorconfig-vim)
  * [Tabular](https://github.com/godlygeek/tabular)
  * [vim-coffee-script](https://github.com/kchmck/vim-coffee-script)
  * [ctrlp.vim](https://github.com/kien/ctrlp.vim)
  * [vim-markdown](https://github.com/plasticboy/vim-markdown)
  * [Syntastic](https://github.com/scrooloose/syntastic)
  * [Neocomplete](https://github.com/Shougo/neocomplete.vim)
  * [Neosnippet](https://github.com/Shougo/neosnippet.vim)
  * [vimlint](https://github.com/syngan/vim-vimlint)
  * [neosnippet-snippets](https://github.com/Shougo/neosnippet-snippets)
  * [vim-multiple-cursors](https://github.com/terryma/vim-multiple-cursors)
  * [TComment](https://github.com/tomtom/tcomment_vim)
  * [dispatch.vim](https://github.com/tpope/vim-dispatch)
  * [fugitive.vim](https://github.com/tpope/vim-fugitive)
  * [heroku.vim](https://github.com/tpope/vim-heroku)
  * [rails.vim](https://github.com/tpope/vim-rails)
  * [rvm.vim](https://github.com/tpope/vim-rvm)
  * [surround.vim](https://github.com/tpope/vim-surround)
  * [vim-ruby](https://github.com/vim-ruby/vim-ruby)
  * [Auto-Pairs](https://github.com/vim-scripts/Auto-Pairs)
  * [vimlparser](https://github.com/ynkdir/vim-vimlparser)

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
