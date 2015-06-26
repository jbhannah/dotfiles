if has("gui_running")
  if has("gui_gtk2")
    set guifont=Inconsolata\ 11
  elseif has("gui_macvim")
    set guifont=Monaco:h12
  elseif has("gui_win32")
    set guifont=Consolas:h11:cANSI
  endif
endif
