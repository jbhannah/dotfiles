" Vundle
if filereadable(expand("~/.vimrc.bundles"))
  source ~/.vimrc.bundles
endif

set autowrite
set incsearch
set nocompatible
set nowrap
set showcmd

filetype plugin indent on
syntax on

" Colors
set background=dark
colorscheme base16-default

" Line numbers
set number
set numberwidth=5
highlight LineNr ctermbg=black ctermfg=DarkGray

" Status bar
set laststatus=2
set ruler

" Highlight current line
set cursorline
highlight CursorLine ctermbg=235
highlight CursorLineNR ctermbg=235

" Visual mode highlight
highlight Visual ctermbg=240

" Vertical split bar color
highlight VertSplit ctermbg=237 ctermfg=237

" Indentation
set expandtab
set shiftwidth=2
set softtabstop=2

" Spell checking
set spelllang=en
set spellfile=$HOME/.vim/spell/en.utf-8.add
nnoremap <Leader>s a<C-X><C-S>

" Mouse scrolling
set mouse=a
map <ScrollWheelUp> <C-Y>
map <ScrollWheelDown> <C-E>

" Use The Silver Searcher for Ctrl+P and searching
" http://robots.thoughtbot.com/faster-grepping-in-vim
if executable('ag')
  set grepprg=ag\ --nogroup\ --nocolor
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
  let g:ctrlp_use_caching = 0
endif

" Fugitive (from Janus)
nmap <Leader>gb :Gblame<CR>
nmap <Leader>gc :Gcommit<CR>
nmap <Leader>gd :Gdiff<CR>
nmap <Leader>gl :Glog<CR>
nmap <Leader>gp :Gpedit! push<CR><C-W>k
nmap <Leader>gs :Gstatus<CR>

" NeoComplete
let g:neocomplete#enable_at_startup = 1

"" SuperTab-like behavior
imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
  \ "\<Plug>(neosnippet_expand_or_jump)"
  \: pumvisible() ? "\<C-n>" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
  \ "\<Plug>(neosnippet_expand_or_jump)"
  \: "\<TAB>"

"" For snippet_complete marker
if has('conceal')
  set conceallevel=2 concealcursor=i
endif

" vim-markdown
let g:vim_markdown_folding_disabled=1

" Syntastic
let g:syntastic_html_tidy_empty_tags = ['i']

" Ctags integration
nnoremap <Leader>ct :CtrlPTag<cr>
nnoremap <Leader>cb :TagbarToggle<cr>

" Define OpenURL command for rails.vim
command -bar -nargs=1 OpenURL :!open <args>

" Local config
if filereadable(expand("~/.vimrc.local"))
  source ~/.vimrc.local
endif
