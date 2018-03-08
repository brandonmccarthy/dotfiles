" General
set number
set relativenumber
set nowrap
let mapleader='`'
filetype plugin on
syntax enable


" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')
Plug 'crusoexia/vim-monokai'
Plug 'tpope/vim-fugitive'
Plug 'benmills/vimux'
Plug 'scrooloose/nerdtree'
Plug 'fatih/vim-go'
Plug 'lervag/vimtex'
Plug 'scrooloose/nerdcommenter'

" Initialize plugin system
call plug#end()

" Theming stuff
syntax on
colorscheme monokai

" Highlighting
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

" Vimux stuff
" Prompt for a command to run
map <Leader>vp :VimuxPromptCommand<CR>
" Run last command executed by VimuxRunCommand
map <Leader>vl :VimuxRunLastCommand<CR>
