let mapleader = " "

if ! filereadable(expand('~/.config/nvim/autoload/plug.vim'))
	echo "Downloading junegunn/vim-plug to manage plugins..."
	silent !mkdir -p ~/.config/nvim/autoload/
	silent !curl "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" > ~/.config/nvim/autoload/plug.vim
endif

call plug#begin('~/.config/nvim/plugged')
Plug 'tpope/vim-surround' " cs:- change surround from : to -
Plug 'scrooloose/nerdtree'
Plug 'PotatoesMaster/i3-vim-syntax'
Plug 'jreybert/vimagit'
Plug 'bling/vim-airline'
Plug 'tpope/vim-commentary' " gcc to comment out
call plug#end()

" Basics
" mapping for all modes:   :map/:noremap
" mapping for normal mode: :nmap/:nnoremap
" mapping for visual mode: :vmap/:vnoremap
	set encoding=utf-8
	syntax on
	set number
	set mouse=a
	set nohlsearch
	filetype plugin on
	set nocompatible

" Enable autocompletion:
	set wildmode=longest,list,full

" Spell-check set to <leader>o, 'o' for 'orthography':
	map <leader>o :setlocal spell! spelllang=en_us<CR>

" Splits open at the bottom and right, which is non-retarded, unlike vim defaults.
	set splitbelow splitright

" Copy selected text to system clipboard (requires gvim/nvim/vim-x11 installed):
	vnoremap <C-c> "+y
	vnoremap <C-x> "+d
	map <C-v> "+P"

" Automatically deletes all trailing whitespace on save.
	autocmd BufWritePre * %s/\s\+$//e

" When shortcut files are updated, renew bash and vifm configs with new material:
"	autocmd BufWritePost ~/.config/bmdirs,~/.config/bmfiles !shortcuts

" Run xrdb whenever Xdefaults or Xresources are updated.
	autocmd BufWritePost *Xresources,*Xdefaults !xrdb %

