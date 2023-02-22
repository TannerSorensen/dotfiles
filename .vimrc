colo slate
syntax on

filetype plugin indent on

" show existing tab with 4 spaces width
set tabstop=4

" when indenting with '>', use 4 spaces width
set shiftwidth=4

" On pressing tab, insert 4 spaces
set expandtab

" show the matching part of the pair for [] {} and ()
set showmatch

" enable incremental search
set incsearch

" end-line reminder column at 100 characters
set colorcolumn=100
highlight ColorColumn ctermbg=darkgray

" set hybrid line numbering
set number relativenumber

" Flash screen instead of beep sound
set visualbell

" Change how vim represents characters on the screen
set encoding=utf-8

" Set the encoding of files written
set fileencoding=utf-8

set undofile " Maintain undo history between sessions
set undodir=~/.vim/undodir

" Hardcore mode, disable arrow keys.
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" NERDTree
nnoremap <C-g> :NERDTreeToggle<CR>

" fzf
nnoremap <C-h> :FZF<CR>

let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()

Plug 'junegunn/fzf'
Plug 'wycats/nerdtree'

call plug#end()
