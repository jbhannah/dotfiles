set autowrite
set expandtab
set incsearch
set nowrap
set ruler
set showcmd

syntax on

" Vundle
if filereadable(expand("~/.vimrc.bundles"))
  source ~/.vimrc.bundles
endif

" Colors
set background=dark
colorscheme base16-eighties

" Line numbers
set number
set numberwidth=5
highlight LineNr ctermbg=black ctermfg=DarkGray

" Status bar
set laststatus=2
highlight StatusLine ctermbg=DarkGray ctermfg=LightGray
highlight StatusLineNC ctermbg=DarkGray ctermfg=black

" Mappings
"" Fugitive (from Janus)
nmap <Leader>gb :Gblame<CR>
nmap <Leader>gc :Gcommit<CR>
nmap <Leader>gd :Gdiff<CR>
nmap <Leader>gl :Glog<CR>
nmap <Leader>gp :Git push<CR>
nmap <Leader>gs :Gstatus<CR>

" Use The Silver Searcher https://github.com/ggreer/the_silver_searcher
if executable('ag')
  " Use Ag over Grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

" Local config
if filereadable(expand("~/.vimrc.local"))
  source ~/.vimrc.local
endif
