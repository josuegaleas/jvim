## Key Mappings
- `\sc` — Toggles Vim's spell-checking
- `\pm` — Toggles Vim's paste mode
- `\uh` — Unhighlights searches
- `\tb` — Toggles Tagbar's tag explorer
- `\hg` — Shows all highlight groups
- `\gn` — Shows essential highlight groups
- `\hit` — Runs Vim's built-in highlighting test
- `^k` — Previous warning/error in ALE
- `^j` — Next warning/error in ALE

## Prerequisites
- ctags
- grip (through pip)
- curl
- git

## Installation
```Shell
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
git clone -b personal https://github.com/josuegaleas/jvim.git ~/.vim/jvim
ln -s ~/.vim/jvim/.vimrc ~/.vimrc
ln -s ~/.vim/jvim/.jline.vim ~/.jline.vim
vim +PlugInstall +qall
```
