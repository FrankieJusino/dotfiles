" Set runtime path to include Vundle and initialize it
set nocompatible
filetype off

" Set Vundle's runtime path
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage itself
Plugin 'VundleVim/Vundle.vim'

" Color scheme plugin
Plugin 'nanotech/jellybeans.vim'

" Additional plugins
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'tpope/vim-fugitive'
Plugin 'Valloric/YouCompleteMe'

call vundle#end()
filetype plugin indent on

" Apply color scheme
colorscheme jellybeans

" Additional Vim settings (optional)
set number          " Show line numbers
set tabstop=4       " Set tab size to 4 spaces
set shiftwidth=4    " Indentation size
set expandtab       " Use spaces instead of tabs

