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
" [Syntastic]
Plug 'vim-syntastic/syntastic'
" [Indent Guides]
Plug 'nathanaelkane/vim-indent-guides'
" [Surround]
Plug 'tpope/vim-surround'
" [Repeat]
Plug 'tpope/vim-repeat'
" [Polyglot]
Plug 'sheerun/vim-polyglot'
call plug#end()


" ---------- VIM CONFIGURATION -------------
" [Line Number]
set number
" [Tab Indent]
set expandtab
set autoindent
set smartindent
set tabstop=4
set shiftwidth=4
set softtabstop=4
" [Cursor]
let &t_SI = "\<esc>[5 q"
let &t_SR = "\<esc>[5 q"
let &t_EI = "\<esc>[2 q"
" ---------- END OF CONFIGURATION ---------- 


" ---------- PLUGIN CONFIGURATION ---------- 
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
" [Indent Guides]
let g:indent_guides_enable_on_vim_startup = 1
" ---------- END OF CONFIGURATION ---------- 
