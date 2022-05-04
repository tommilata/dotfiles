" requires vim-plug https://github.com/junegunn/vim-plug
call plug#begin('~/.local/share/nvim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'dikiaap/minimalist'
call plug#end()

syntax enable 

colorscheme minimalist
let g:airline_theme='minimalist'
let g:airline#extensions#tabline#enabled = 1

let g:bold_highlight_groups = ['Function', 'Statement', 'Todo', 'CursorLineNr', 'MatchParen', 'StatusLine']

