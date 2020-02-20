" automatically download vim-plug if it doesn't already exist
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" vim-plug plugin folder
call plug#begin('~/.vim/plugged')

" Declare the list of plugins:
" Plug 'plugin/link'
Plug 'dracula/vim',{'as':'dracula'}

" end vim-plug
call plug#end()

syntax on
colorscheme dracula
set nocompatible
let g:mapleader=" "
