" Specify a directory for plugins
call plug#begin(stdpath('data') . '/plugged')

" File explorer/browser(enabled on-demand)
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" Lean & mean status/tabline
Plug 'vim-airline/vim-airline'


" Initialize plugin system
call plug#end()

" ------------------------------------------------------------
" ------------------------------------------------------------


" ------------------------------------------------------------
" Nvim configuration
" ------------------------------------------------------------

" Highlight a selection on yank
au TextYankPost * silent! lua vim.highlight.on_yank()
set number
set mouse=a             " Enable mouse drag on window splits
set splitbelow          " Always split below
set tabstop=4           " number of visual spaces per TAB
set shiftwidth=4        " Number of spaces to use for autoindent
set expandtab           " Make tabs spaces

" ------------------------------------------------------------
" Key mappings
" ------------------------------------------------------------

" NERDTree
nmap        <F2>      :NERDTreeToggle<CR>
