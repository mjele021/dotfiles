" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
call plug#begin(stdpath('data') . '/plugged')

" File explorer/browser(enabled on-demand)
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" a class/functions/variables outline viewer
Plug 'preservim/tagbar'

" Lean & mean status/tabline
Plug 'vim-airline/vim-airline'


" Initialize plugin system
call plug#end()

" ------------------------------------------------------------
" ------------------------------------------------------------

" ------------------------------------------------------------
" vim-airline configuration
" ------------------------------------------------------------
let g:airline_powerline_fonts = 1
" Automatically displays all buffers when there's only one tab open
let g:airline#extensions#tabline#enabled = 1

" ------------------------------------------------------------
" Nvim configuration
" ------------------------------------------------------------

" Highlight a selection on yank
au TextYankPost * silent! lua vim.highlight.on_yank()
set number              " Enable line numbers
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
" tagbar
nmap        <F8>      :TagbarToggle<CR>
