call plug#begin('~/.vim/plugged')
" [Airline]
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" [Nerd Tree]
Plug 'preservim/nerdtree'
" [Dart]
Plug 'dart-lang/dart-vim-plugin'
" [Flutter]
Plug 'thosakwe/vim-flutter'
" [LSC]
Plug 'natebosch/vim-lsc'
" [Dart LSC]
Plug 'natebosch/vim-lsc-dart'
" [Gruvbox Theme]
Plug 'morhetz/gruvbox'
" [Syntastic]
Plug 'vim-syntastic/syntastic'
" [Indent Guides]
Plug 'nathanaelkane/vim-indent-guides'
call plug#end()


" ---------- VIM CONFIGURATION -------------
" [Color Scheme]
colorscheme gruvbox
set background=dark
" [Line Number]
set number
" [Tab Indent]
set expandtab
set autoindent
set smartindent
set tabstop=4
set shiftwidth=4
set softtabstop=4
" ---------- END OF CONFIGURATION ---------- 


" ---------- PLUGIN CONFIGURATION ---------- 
" [Gruvbox]
let g:gruvbox_contrast_dark = 'soft'
" [Airline] 
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_left_sep = ''
let g:airline_right_sep = ''
" [Nerd Tree]
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
let NERDTreeShowHidden=1
" [Dart]
let g:dart_style_guide = 2
let g:dart_format_on_save = 1
" [Dart LSC]
let g:lsc_auto_map = v:true
" ---------- END OF CONFIGURATION ---------- 
" [Indent Guides]
let g:indent_guides_enable_on_vim_startup = 1

