" Set Vundle's runtime path
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
  
" Let Vundle manage itself
Plugin 'VundleVim/Vundle.vim'
 
" Color scheme plugin
Plugin 'morhetz/gruvbox'
 
" Additional plugins
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'tpope/vim-fugitive'
Plugin 'preservim/nerdtree'
map <F5> :NERDTreeToggle<CR>
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled = 1

call vundle#end()
filetype plugin indent on

" Apply color scheme"
set background=dark
colorscheme gruvbox

" Additional Vim settings (optional)
set number          " Show line numbers
set tabstop=4       " Set tab size to 4 spaces
set shiftwidth=4    " Indentation size
set expandtab       " Use spaces instead of tabs
