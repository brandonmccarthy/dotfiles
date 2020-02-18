"""""""""""""""""""""""""""""""""""""""""
" Plugins
"""""""""""""""""""""""""""""""""""""""""
set number
set nowrap
let mapleader='\'
filetype plugin on
syntax enable

" Switch between buffers
nnoremap <C-N> :tabnext<CR>
nnoremap <C-P> :tabprev<CR>

"""""""""""""""""""""""""""""""""""""""""
" Plugins
"""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.vim/plugged')
Plug 'airblade/vim-gitgutter'
Plug 'majutushi/tagbar'
Plug 'benmills/vimux'
Plug 'crusoexia/vim-monokai'
Plug 'fatih/vim-go'
Plug 'godlygeek/tabular'
Plug 'itchyny/lightline.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'lervag/vimtex'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'tpope/vim-fugitive'

" Initialize plugin system
call plug#end()

"""""""""""""""""""""""""""""""""""""""""
" Theme
"""""""""""""""""""""""""""""""""""""""""
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

"""""""""""""""""""""""""""""""""""""""""
" Vimux
"""""""""""""""""""""""""""""""""""""""""
" Prompt for a command to run
map <Leader>vp :VimuxPromptCommand<CR>
" Run last command executed by VimuxRunCommand
map <Leader>vl :VimuxRunLastCommand<CR>

"""""""""""""""""""""""""""""""""""""""""
" Nerd
"""""""""""""""""""""""""""""""""""""""""
map <F2> :NERDTreeToggle<CR>
map <F8> :TagBarToggle<CR>

"""""""""""""""""""""""""""""""""""""""""
" Tabularize
"""""""""""""""""""""""""""""""""""""""""
nmap <Leader>a= :Tabularize /=<CR>
vmap <Leader>a= :Tabularize /=<CR>
nmap <Leader>a: :Tabularize /:\zs<CR>
vmap <Leader>a: :Tabularize /:\zs<CR>

"""""""""""""""""""""""""""""""""""""""""
" fzf
"""""""""""""""""""""""""""""""""""""""""
map <Leader>b :Buffers<CR>
map <Leader>t :BTags<CR>
map <Leader>l :BLines<CR>

let g:fzf_action = {
	\ 'ctrl+t': 'tab split',
	\ 'ctrl+x': 'split',
	\ 'ctrl+v': 'vsplit',
}

let g:fzf_layout { 'down': '-40%' }

" Customize fzf colors to match your color scheme
let g:fzf_colors = { 
  \ 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] 
}

map ; :Files<CR>


