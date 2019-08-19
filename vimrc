set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'tmhedberg/SimpylFold' 		" Simply fold to help with indentation
Plugin 'vim-scripts/indentpython.vim' 	" Auto indentation for python
Plugin 'vim-syntastic/syntastic'	" Syntax checking
Plugin 'nvie/vim-flake8'		" PEP 8 checking
Plugin 'jnurmine/Zenburn'		" Color schemes
Plugin 'scrooloose/nerdtree'		" File tree
Plugin 'jistr/vim-nerdtree-tabs'	" Tabs with file tree
Plugin 'kien/ctrlp.vim'			" Super searching, Search anything using ctrl P
Plugin 'tpope/vim-fugitive'		" Basic git integration

" Not setup plugins
" Plugin 'Valloric/YouCompleteMe' 	" Auto complete for python, requires additional libraries, check official page https://github.com/ycm-core/YouCompleteMe#linux-64-bit

" add all your plugins here
"
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

set splitbelow
set splitright
" split navigations (split without mouse)
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Code folding enable
set foldmethod=indent
set foldlevel=99
nnoremap <space> za	" Folding with space instead of za
let g:SimpylFold_docstring_preview=1	" docstrings for folded code

" flag unnecessary whitespace so you can delete it
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" UTF-8 support especially for python3
set encoding=utf-8

" Make python pretty
let python_highlight_all=1
syntax on

" Line Numbering
set nu

" nerdTree setup
" shortcut key remap
map <C-n> :NERDTreeToggle<CR>
" close vim if only window open is nerdTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
