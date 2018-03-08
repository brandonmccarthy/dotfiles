" General
set number
set relativenumber
set nowrap
let mapleader='`'
filetype plugin on
syntax enable

" Plugins
call plug#begin()
Plug 'tpope/vim-fugitive'
Plug 'benmills/vimux'
Plug 'sickill/vim-monokai'
Plug 'hzchirs/vim-material'
Plug 'scrooloose/nerdtree'
Plug 'fatih/vim-go'
Plug 'lervag/vimtex'
Plug 'scrooloose/nerdcommenter'
call plug#end()

" Highlighting
let g:go_highlight_functions = 1  
let g:go_highlight_methods = 1  
let g:go_highlight_structs = 1  
let g:go_highlight_operators = 1  
let g:go_highlight_build_constraints = 1  

" Theme
set background=dark
colorscheme monokai

" Vimux stuff
" Prompt for a command to run
map <Leader>vp :VimuxPromptCommand<CR>
" Run last command executed by VimuxRunCommand
map <Leader>vl :VimuxRunLastCommand<CR>
