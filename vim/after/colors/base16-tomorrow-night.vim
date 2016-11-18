" Line numbers
highlight LineNr ctermbg=0 ctermfg=8
highlight LineNr guibg=bg guifg=#585858

" Highlight current line
highlight CursorLine ctermbg=234
highlight CursorLine guibg=#181818
highlight CursorLineNr ctermbg=234 ctermfg=8 term=NONE
highlight CursorLineNr guibg=#181818 guifg=#585858 gui=NONE

" Wrap marker
highlight ColorColumn ctermbg=234
highlight ColorColumn guibg=#181818

" Visual mode highlight
highlight Visual ctermbg=237

" Vertical split bar color
highlight VertSplit ctermbg=237 ctermfg=237

" Git gutter
let g:gitgutter_override_sign_column_highlight = 0
highlight SignColumn ctermbg=0
highlight SignColumn guibg=bg
highlight GitGutterAdd ctermbg=0
highlight GitGutterAdd guibg=bg
highlight GitGutterChange ctermbg=0
highlight GitGutterChange guibg=bg
highlight GitGutterDelete ctermbg=0
highlight GitGutterDelete guibg=bg
highlight GitGutterChangeDelete ctermbg=0
highlight GitGutterChangeDelete guibg=bg
