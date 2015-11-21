# MyVIM
My personal set-up of Vim

**Included:**
- [Pathogen](https://github.com/tpope/vim-pathogen) – For managing plugins.
- [Airline](https://github.com/bling/vim-airline) – For a better statusline and tabline.
- [Syntastic](https://github.com/scrooloose/syntastic) – For syntax checking.
- [Molokai](https://github.com/tomasr/molokai) – Personal favorite colorscheme.
- [Fugitive](https://github.com/tpope/vim-fugitive) - For Git functionality.
- [GitGutter](https://github.com/airblade/vim-gitgutter) - For Git diff in the gutter, and hunk functionality.

## Installation (WIP)
Backup your .vim folder and .vimrc file. (I am not responsible for any data loss.)
```
git clone --recursive https://github.com/jdevalerie/MyVIM.git ~/MyVim
cd ~/MyVim
git submodule foreach git checkout master
ln -s ~/MyVim ~/.vim
ln -s ~/MyVim/vimrc ~/.vimrc
```
To update submodules:
```
cd ~/MyVim
git submodule foreach git pull
```
