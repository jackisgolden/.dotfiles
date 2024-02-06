set nocompatible
filetype plugin on
syntax on

map I:! pdflatex %<CR><CR>
map S:! mupdf -x11 ${echo % \| sed 's/tex$/pdf/) & disown<CR>

set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent

set exrc
set relativenumber
set nu
set scrolloff=8

au BufRead,BufNewFile *.cs set filetype=csound


" vim-plug plugins
call plug#begin('~/.vim/plugged')
" A Vim Plugin for Lively Previewing LaTeX PDF Output
Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }
call plug#end()
