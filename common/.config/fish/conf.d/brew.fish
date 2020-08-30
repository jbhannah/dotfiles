if status is-interactive; and type -q brew
    abbr -a -g bb brew bundle
    abbr -a -g bbg brew bundle --global
    abbr -a -g brewc brew cleanup
    abbr -a -g brewh brew home
    abbr -a -g brewi brew info
    abbr -a -g brewI brew install
    abbr -a -g brewL brew leaves
    abbr -a -g brewl brew list
    abbr -a -g brewo brew outdated
    abbr -a -g brews brew search
    abbr -a -g brewu brew upgrade
    abbr -a -g brewx brew uninstall

    abbr -a -g cask brew cask
    abbr -a -g caskh brew cask home
    abbr -a -g caski brew cask info
    abbr -a -g caskI brew cask install
    abbr -a -g caskl brew cask list
    abbr -a -g casko brew cask outdated
    abbr -a -g casku brew cask upgrade
    abbr -a -g caskx brew cask uninstall

    abbr -a -g buc 'brew upgrade; brew cleanup'
end
