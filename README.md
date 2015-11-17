# MyVIM
My personal set-up of VIM

**Currently in place:**
- [Pathogen](https://github.com/tpope/vim-pathogen)
- [Airline](https://github.com/bling/vim-airline)
- [Syntastic](https://github.com/scrooloose/syntastic)
- [Molokai](https://github.com/tomasr/molokai)
- [Fugitive](https://github.com/tpope/vim-fugitive)

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
