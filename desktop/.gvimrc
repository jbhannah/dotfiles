if has("gui_running")
  if has("gui_gtk2")
    set guifont=Inconsolata\ 11
  elseif has("gui_macvim")
    set guifont=Hack:h12
  elseif has("gui_win32")
    set guifont=Consolas:h11:cANSI
  endif
endif

set guicursor+=a:blinkon0

set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R

set linespace=1
