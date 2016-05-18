" dein.vim
if filereadable(expand("~/.vimrc.bundles"))
  source ~/.vimrc.bundles
endif

set autowrite
set nocompatible
set nowrap
set textwidth=80
set colorcolumn=80

" Search highlighting
set hlsearch
nnoremap <C-l> :nohlsearch<CR><C-l>
autocmd InsertEnter * :setlocal nohlsearch
autocmd InsertLeave * :setlocal hlsearch

" Colors
set background=dark
let g:base16colorspace=256
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

" CtrlP
let g:ctrlp_extensions = ['tag', 'quickfix', 'undo']

" Use The Silver Searcher for Ctrl+P and searching
" http://robots.thoughtbot.com/faster-grepping-in-vim
if executable('ag')
  set grepprg=ag\ --nogroup\ --nocolor\ --hidden
  let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'
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

" vim-go
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

" Syntastic
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_html_tidy_empty_tags = ['i']
let g:syntastic_javascript_checkers = ['eslint']

let g:syntastic_go_checkers = ['golint', 'govet', 'errcheck']
let g:syntastic_mode_map = { 'mode': 'active', 'passive_filetypes': ['go'] }

" YouCompleteMe
let g:ycm_key_list_select_completion = ['<C-N>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-P>', '<Up>']

" Ctags integration
nnoremap <Leader>ct :CtrlPTag<cr>
nnoremap <Leader>cb :TagbarToggle<cr>

" Transpose characters
nnoremap <silent> <Plug>TransposeCharacters xp
      \:call repeat#set("\<Plug>TransposeCharacters")<CR>
nmap cp <Plug>TransposeCharacters

" Local config
if filereadable(expand("~/.vimrc.local"))
  source ~/.vimrc.local
endif
