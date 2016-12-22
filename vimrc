set nocompatible

" Pathogen
call pathogen#infect()
call pathogen#helptags()
 
set statusline=%<\ %n:%f\ %m%r%y%=%-35.(%{strftime('%I:%M\ %p')}\ line:\ %l\ of\ %L,\ col:\ %c%V\ (%P)%)
filetype plugin indent on
 
" Nerdtree
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p
let NERDTreeShowBookmarks=1
let NERDTreeChDirMode=0
let NERDTreeQuitOnOpen=0
let NERDTreeMouseMode=2
let NERDTreeShowHidden=1
let NERDTreeIgnore=['\.pyc','\~$','\.swo$','\.swp$','\.git','\.hg','\.svn','\.bzr']
let NERDTreeKeepTreeInNewTab=1
let g:nerdtree_tabs_open_on_gui_startup=0
 
" set color and line numbers
set background=dark
colorscheme desert
set nu
set expandtab
set tabstop=4
set shiftwidth=4

" set pig and scala syntax
augroup filetypedetect
	  au BufNewFile,BufRead *.pig set filetype=pig syntax=pig
	  au BufNewFile,BufRead *.scala set filetype=scala syntax=scala
  augroup END 

" set mouse mode
set mouse=nv

" show current line on status bar
"set ruler
"set rulerformat=%55(%{strftime('%I:%M\ %p')}\ %5l,%-6(%c%V%)\ %P% )
