brew 'stow'
brew 'ag'
brew 'ctags'
brew 'python3'
brew 'thefuck'
brew 'hub'
brew 'rustup'
brew 'go'
brew 'mono'
brew 'node'
brew 'yarn'

if system 'uname -a | grep Darwin'
  brew 'macvim', args: ['with-luajit', 'with-python3', 'with-override-system-vim']
else
  brew 'vim', args: ['with-luajit', 'with-python3', 'with-override-system-vi']
end

tap 'caskroom/cask'
tap 'caskroom/fonts'
cask 'font-hack'

tap 'd12frosted/emacs-plus'
brew 'emacs-plus'
