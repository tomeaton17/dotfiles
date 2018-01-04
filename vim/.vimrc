set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Plugins under here
Plugin 'VundleVim/Vundle.vim'
Plugin 'lervag/vimtex'
Plugin 'Valloric/YouCompleteMe'
Plugin 'xero/blaquemagick.vim'
Plugin 'nanotech/jellybeans.vim'
Plugin 'xero/sourcerer.vim'
Plugin 'sickill/vim-monokai'
Plugin 'jiangmiao/auto-pairs'
" Plugins above here
" Bundles below here
Bundle "daylerees/colour-schemes", { "rtp": "vim/" }
Bundle 'mattn/webapi-vim'
Bundle 'mattn/gist-vim'
" Bundles above here
call vundle#end()
filetype plugin indent on

"vimtex
let g:vimtex_view_method = 'zathura'
let g:tex_flavor = "latex"

"indentation
set expandtab
autocmd FileType tex set shiftwidth=4
autocmd FileType tex set softtabstop=4


"syntax highlighting
syntax on

"spellcheck
autocmd FileType latex setlocal spell

"backspace
set backspace=2

"YouCompleteMe
let g:ycm_autoclose_preview_window_after_completion=1
"let g:ycm_global_ycm_extra_conf = '/home/tom/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

"Theme
colorscheme sourcerer

set number relativenumber

"Mouse
set mouse=a

"Swapfiles
set directory=$HOME/.vim/swapfiles//

"Clipboard
set clipboard=unnamedplus
