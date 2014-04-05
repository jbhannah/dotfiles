" Vundle
if filereadable(expand("~/.vimrc.bundles"))
  source ~/.vimrc.bundles
endif

set autowrite
set incsearch
set nowrap
set showcmd

syntax on

" Colors
set background=dark
colorscheme base16-eighties

" Line numbers
set number
set numberwidth=5
highlight LineNr ctermbg=black ctermfg=DarkGray

" Status bar
set laststatus=2
set ruler
highlight StatusLine ctermbg=DarkGray ctermfg=LightGray
highlight StatusLineNC ctermbg=DarkGray ctermfg=black

" Highlight current line
set cursorline
highlight CursorLine ctermbg=black
highlight CursorLineNR ctermbg=DarkGray ctermfg=LightGray

" Indentation
set expandtab
set shiftwidth=2
set softtabstop=2

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
  set grepprg=ag\ --nogroup\ --nocolor
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
  let g:ctrlp_use_caching = 0
endif

" NeoComplete
let g:neocomplete#enable_at_startup = 1
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
                        \ "\<Plug>(neosnippet_expand_or_jump)"
                        \: pumvisible() ? "\<C-n>" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
                        \ "\<Plug>(neosnippet_expand_or_jump)"
                        \: "\<TAB>"
autocmd FileType gitcommit,markdown, nested NeoCompleteLock

" Local config
if filereadable(expand("~/.vimrc.local"))
  source ~/.vimrc.local
endif
