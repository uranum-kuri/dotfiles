let g:python3_host_prog = "~/.local/share/nvim/provider/python/venv/bin/python"
let g:node_host_prog = "~/.local/share/nvim/provider/nodejs/node_modules/neovim/bin/cli.js"
let g:loaded_python_provider = 0
let g:loaded_ruby_provider = 0
let g:loaded_perl_provider = 0

set list
set autoread
set ignorecase
set hidden

let g:c_syntax_for_h = 1

nnoremap <silent> <Esc><Esc> :noh<CR>

nnoremap <silent> <Leader>a :vs<CR>
nnoremap <silent> <Leader>s :sp<CR>

lua require("plugins")

