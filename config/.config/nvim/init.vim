let g:python3_host_prog = "~/.local/share/nvim/provider/python/venv/bin/python"
let g:node_host_prog = "~/.local/share/nvim/provider/nodejs/node_modules/neovim/bin/cli.js"
let g:loaded_python_provider = 0
let g:loaded_ruby_provider = 0
let g:loaded_perl_provider = 0

set ignorecase
set hidden

nnoremap <silent> <Esc><Esc> :noh<CR>

lua require("plugins")

