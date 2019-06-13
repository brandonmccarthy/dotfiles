" General
set number
set nowrap
let mapleader=','
filetype plugin on
syntax enable

" Custom maps
map ; :Files<CR>

" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')
Plug 'crusoexia/vim-monokai'
Plug 'tpope/vim-fugitive'
Plug 'godlygeek/tabular'
Plug 'benmills/vimux'
Plug 'itchyny/lightline.vim'
Plug 'scrooloose/nerdtree'
Plug 'junegunn/fzf.vim'
Plug 'fatih/vim-go'
Plug 'lervag/vimtex'
Plug 'scrooloose/nerdcommenter'

" Initialize plugin system
call plug#end()

" Theming stuff
syntax on
colorscheme monokai

" lightline bar
set laststatus=2
set noshowmode
let g:lightline = {
 \	'active': {
 \		'left': [['mode', 'paste'], ['readonly', 'filename', 'modified']],
 \		'right': [['lineinfo'], ['percent'], ['fileformat', 'fileencoding']]
 \	}
 \ }

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

" Tabularize
nmap <Leader>a= :Tabularize /=<CR>
vmap <Leader>a= :Tabularize /=<CR>
nmap <Leader>a: :Tabularize /:\zs<CR>
vmap <Leader>a: :Tabularize /:\zs<CR>
