" Automatic Installation of Vim-Plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()

" let Vundle manage Vundle, required
Plug 'VundleVim/Vundle.vim'

" Better markdown support
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'

" Rust Support syntax + checker cargo (or rustc)
Plug 'rust-lang/rust.vim'

" Fish completion ^X^O, ...
Plug 'Soares/fish.vim'

" New Syntax checking
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }

" File browser
Plug 'scrooloose/nerdtree'

" Better tex syntax highlighting
Plug 'gi1242/vim-tex-syntax'

" Better Javascript Support
Plug 'pangloss/vim-javascript'

" All of your Plugins must be added before the following line
call plug#end()            " required



" Settings for plugins:

" NERDTree settings
" Open automatically when no files were specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Open when calling vim on directory
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

" Open NERDTree with ctrl-n
map <C-n> :NERDTreeToggle<CR>

" LanguageClient settings
set hidden
nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
nnoremap <silent> <F2> :call LanguageClient#textDocument_rename()<CR>

" Vim JavaScript Settings
let g:javascript_plugin_jsdoc = 1
