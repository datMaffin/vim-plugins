# Vim Plugins
A repository to conveniently install and sync vim plugins with 
[Vundle](https://github.com/VundleVim/Vundle.Vim).

## Installation
 1. Clone the repository to a location of your choice 
    `$ git clone https://github.com/datMaffin/vim-plugins.git`
 2. Add the line `so .../vim-plugins.vim` at the beginning of the `~/.vimrc` 
    file.
 3. Run `:PluginInstall` in vim. (Can fail while running vim in a non POSIX-Shell.
 Run `:set sh=sh` before.)

### Installation of New Plugins
Add those plugins to the `vim-plugins.vim` file as described for 
[Vundle](https://github.com/VundleVim/Vundle.Vim).

Afterwards: Run the 3. installation step.

## Update
Run the 3. installation step.
