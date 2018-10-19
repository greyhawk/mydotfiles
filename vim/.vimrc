set t_Co=256
set nocompatible
filetype off

call plug#begin('~/.vim/plugged')
Plug 'altercation/vim-colors-solarized'
Plug '/usr/local/opt/fzf'
call plug#end()

syntax enable
let g:solarized_termtrans = 1
set background=dark
colorscheme solarized

set shell=bash\ -i

inoremap  <Up>     <NOP>
inoremap  <Down>   <NOP>
inoremap  <Left>   <NOP>
inoremap  <Right>  <NOP>
noremap   <Up>     <NOP>
noremap   <Down>   <NOP>
noremap   <Left>   <NOP>
noremap   <Right>  <NOP>

