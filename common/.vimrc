" dein.vim
if filereadable(expand("~/.vimrc.bundles"))
  source ~/.vimrc.bundles
endif

set autowrite
set nowrap
set textwidth=80
set colorcolumn=+1

" Backup and temp files
set backupdir=~/.vim/_backup//
set directory=~/.vim/_temp//

" Search highlighting
set hlsearch
nnoremap <C-l> :nohlsearch<CR><C-l>
autocmd InsertEnter * :setlocal nohlsearch
autocmd InsertLeave * :setlocal hlsearch

" Colors
colorscheme one
set background=dark

" Gutter
set number
set signcolumn=yes

" Highlight current line
set cursorline

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
let g:ctrlp_extensions = ['tag', 'branches', 'quickfix', 'undo']

" Use The Silver Searcher for Ctrl+P and searching
" http://robots.thoughtbot.com/faster-grepping-in-vim
if executable('ag')
  set grepprg=ag\ --nogroup\ --nocolor\ --hidden
  let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'
  let g:ctrlp_use_caching = 0
endif

" Airline
let g:airline_powerline_fonts = 1
let g:airline_skip_empty_sections = 1
let g:airline_theme = 'one'

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

" rust.vim
let g:rustfmt_autosave = 1

" vim-javacomplete2
autocmd FileType java setlocal omnifunc=javacomplete#Complete

" Vue
autocmd FileType vue syntax sync fromstart

" Syntastic
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_filetype_map = { 'html.handlebars': 'handlebars'  }
let g:syntastic_html_tidy_empty_tags = ['i']
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_ruby_checkers = ['mri', 'reek', 'rubocop']
let g:syntastic_go_checkers = ['golint', 'govet', 'errcheck']
let g:syntastic_mode_map = { 'mode': 'active', 'passive_filetypes': ['go'] }
let g:syntastic_python_pylint_exe = 'python -m pylint'

" deoplete.nvim
let g:deoplete#enable_at_startup = 1

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

" Because letting go of the shift key is for suckers
command! W write

" Local config
if filereadable(expand("~/.vimrc.local"))
  source ~/.vimrc.local
endif
