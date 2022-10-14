" Use Python interpreter from Neovim virtualenv
let g:python3_host_prog = trim(system('brew --prefix')) . '/var/virtualenv/neovim-py3/bin/python'
