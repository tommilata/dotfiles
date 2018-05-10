" requires vim-plug https://github.com/junegunn/vim-plug
call plug#begin('~/.local/share/nvim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
call plug#end()

syntax enable 

let g:airline_theme='onedark'
let g:airline_powerline_fonts = 1

let g:bold_highlight_groups = ['Function', 'Statement', 'Todo', 'CursorLineNr', 'MatchParen', 'StatusLine']

