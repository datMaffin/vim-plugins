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

" File browser
Plugin 'scrooloose/nerdtree'

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

" NERDTree settings
" Open automatically when no files were specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Open when calling vim on directory
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() = 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

" Open NERDTree with ctrl-n
map <C-n> :NERDTreeToggle<CR>

" Syntastic Settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
