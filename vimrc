if filereadable(expand("~/.vimrc.bundles"))
  source ~/.vimrc.bundles
endif

set background=dark
colorscheme base16-eighties

syntax on

" Local config
if filereadable(expand("~/.vimrc.local"))
  source ~/.vimrc.local
endif
