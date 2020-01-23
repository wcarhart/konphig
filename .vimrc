set number
syntax on

set hlsearch
nnoremap <CR> :noh<CR><CR>
let @/ = ""

inoremap<F5> <c-o>:w<cr>

filetype plugin indent on
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

set clipboard=unnamedplus

if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g'\"" | endif
endif
