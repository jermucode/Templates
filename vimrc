"All system-wide defaults are set in $VIMRUNTIME/archlinux.vim (usually just
" /usr/share/vim/vimfiles/archlinux.vim) and sourced by the call to :runtime
" you can find below.  If you wish to change any of those settings, you
"should
" do it in this file (/etc/vimrc), since archlinux.vim will be overwritten
" everytime an upgrade of the vim packages is performed.  It is recommended
"to
" make changes after sourcing archlinux.vim since it alters the value of the
" 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages.
runtime! archlinux.vim

" If you prefer the old-style vim functionalty, add 'runtime!
"vimrc_example.vim'
" Or better yet, read /usr/share/vim/vim80/vimrc_example.vim or the vim
"manual
" and configure vim to your own liking!

" do not load defaults if ~/.vimrc is missing
"let skip_defaults_vim=1

set nocompatible

set background=dark

set number relativenumber

set splitbelow splitright

"HTML template

nnoremap ,html :-1read $HOME/Templates/vimskeleton.html<CR>

filetype plugin indent on

"Create html tags on the fly for IDE behavior
"<em> tags
autocmd FileType html inoremap ,i <em></em><Space><Esc>FeT>i
"<strong> tags
autocmd FileType html inoremap ,b <strong></strong><Space><Esc>9hi
"<div> tags
autocmd FileType html inoremap ,d <div></div><Space><Esc>6hi
"<section> tags
autocmd Filetype html inoremap ,s <section></section><Space><Esc>FeT>i
"empty tags
autocmd FileType html inoremap ,u <></><Space><Esc>3hi


set showcmd
set showmatch
set ignorecase
set smartcase
set incsearch
set hidden

if filereadable("/etc/vimrc.local")
	source /etc/vimrc.local
	endif

