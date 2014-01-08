# dotfiles

Dotfiles and miscellanea. Based on [Thoughtbot's dotfiles][tb].

## Setup

 1. Install [Homebrew][brew].

 2. Install [rcm][]:

        brew tap thoughtbot/rcm
        brew install rcm

 3. Clone dotfiles:

        git clone https://github.com/jbhannah/dotfiles.git

 4. Install dotfiles:

        rcup -d dotfiles -x README.md -x LICENSE

## Updating

Update clone and re-up:

    rcup

[tb]:   https://github.com/thoughtbot/dotfiles
[brew]: http://brew.sh/
[rcm]:  https://github.com/thoughtbot/rcm
