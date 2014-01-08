if filereadable(expand("~/.vimrc.bundles"))
  source ~/.vimrc.bundles
endif

" Local config
if filereadable(expand("~/.vimrc.local"))
  source ~/.vimrc.local
endif
