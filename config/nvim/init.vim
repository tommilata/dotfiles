call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()

syntax enable 

let g:airline_theme='onedark'
let g:airline_powerline_fonts = 1

let g:bold_highlight_groups = ['Function', 'Statement', 'Todo', 'CursorLineNr', 'MatchParen', 'StatusLine']

