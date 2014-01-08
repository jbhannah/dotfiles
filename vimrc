set autowrite
set incsearch
set nowrap
set showcmd
set ruler

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

" Local config
if filereadable(expand("~/.vimrc.local"))
  source ~/.vimrc.local
endif
