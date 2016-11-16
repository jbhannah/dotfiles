" dein.vim
if filereadable(expand("~/.vimrc.bundles"))
  source ~/.vimrc.bundles
endif

set autowrite
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
colorscheme base16-tomorrow-night

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

" Custom filetypes
autocmd BufRead,BufNewFile Envfile setfiletype ruby

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

" vim-ruby
let g:rubycomplete_buffer_loading = 1
let g:rubycomplete_classes_in_global = 1
let g:rubycomplete_rails = 1

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
let g:ycm_collect_identifiers_from_tags_files = 1
let g:ycm_key_list_select_completion = ['<C-N>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-P>', '<Up>']

" NERDTree
nnoremap <Leader>nt :NERDTreeToggle<cr>
nnoremap <Leader>nf :NERDTreeFind<cr>

" Ctags integration
nnoremap <Leader>ct :CtrlPTag<cr>
nnoremap <Leader>cb :TagbarToggle<cr>

" Transpose characters
nnoremap <silent> <Plug>TransposeCharacters xp
      \:call repeat#set("\<Plug>TransposeCharacters")<CR>
nmap cp <Plug>TransposeCharacters

" NeoVim terminal
let g:terminal_color_0 = "#1b1d1e"
let g:terminal_color_1 = "#c55b5b"
let g:terminal_color_2 = "#acb45d"
let g:terminal_color_3 = "#eebe69"
let g:terminal_color_4 = "#7698b6"
let g:terminal_color_5 = "#a989b3"
let g:terminal_color_6 = "#7fb6ae"
let g:terminal_color_7 = "#bec1bf"
let g:terminal_color_8 = "#8b8d8b"
let g:terminal_color_9 = "#c55b5b"
let g:terminal_color_10 = "#acb45d"
let g:terminal_color_11 = "#eebe69"
let g:terminal_color_12 = "#7698b6"
let g:terminal_color_13 = "#a989b3"
let g:terminal_color_14 = "#7fb6ae"
let g:terminal_color_15 = "#ffffff"

" Because letting go of the shift key is for suckers
command! W write

" Local config
if filereadable(expand("~/.vimrc.local"))
  source ~/.vimrc.local
endif
