set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
execute 'set runtimepath+=' . expand('<sfile>:p:h') . '/bundle/Vundle.vim'

 call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Better markdown support
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'

" Rust Support syntax + checker cargo (or rustc)
Plugin 'rust-lang/rust.vim'

" Fish completion ^X^O, ...
Plugin 'Soares/fish.vim'

" Syntax checking
Plugin 'vim-syntastic/syntastic'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" If you are using the fish shell (or probably any other non posix-shell)
" execute :set sh=sh before
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ

" Settings for plugins:

" Syntastic Settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
