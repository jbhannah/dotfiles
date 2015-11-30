" Vundle
if filereadable(expand("~/.vimrc.bundles"))
  source ~/.vimrc.bundles
endif

set autowrite
set nocompatible
set nowrap
set colorcolumn=80

" Colors
set background=dark
let base16colorspace=256
colorscheme base16-default

" Line numbers
set number
set numberwidth=5

" Highlight current line
set cursorline

" Git gutter
set updatetime=250
let g:gitgutter_sign_column_always = 1

" Indentation
set expandtab
set shiftwidth=2
set softtabstop=2

" Spell checking
set spell
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

" Airline
let g:airline_powerline_fonts = 1

" Fugitive (from Janus)
nmap <Leader>gb :Gblame<CR>
nmap <Leader>gc :Gcommit<CR>
nmap <Leader>gd :Gdiff<CR>
nmap <Leader>gl :Glog<CR>
nmap <Leader>gp :Gpush<CR>
nmap <Leader>gs :Gstatus<CR>

" vim-markdown
let g:vim_markdown_folding_disabled=1

" Syntastic
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_html_tidy_empty_tags = ['i']
let g:syntastic_javascript_checkers = ['eslint']

" Ctags integration
nnoremap <Leader>ct :CtrlPTag<cr>
nnoremap <Leader>cb :TagbarToggle<cr>

" Local config
if filereadable(expand("~/.vimrc.local"))
  source ~/.vimrc.local
endif
