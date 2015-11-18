# MyVIM
My personal set-up of Vim

**Currently in place:**
- [Pathogen](https://github.com/tpope/vim-pathogen) – For managing plugins.
- [Airline](https://github.com/bling/vim-airline) – Better statusline and tabline.
- [Syntastic](https://github.com/scrooloose/syntastic) – For syntax checking.
- [Molokai](https://github.com/tomasr/molokai) – Personal favorite colorscheme.
- [Fugitive](https://github.com/tpope/vim-fugitive) - For Git functionality in Vim.

## Installation (WIP)
Backup your .vim folder and .vimrc file. (I am not responsible for any data loss.)
```
git clone https://github.com/jdevalerie/MyVIM.git ~/MyVim
cd ~/MyVim
git submodule init && git submodule update
git submodule foreach git pull
ln -s ~/MyVim ~/.vim
ln -s ~/MyVim/vimrc ~/.vimrc
```
