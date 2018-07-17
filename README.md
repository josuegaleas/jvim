## Key Mappings
- `\sc` — Toggles Vim's spell-checking
- `\pm` — Toggles Vim's paste mode
- `\uh` — Un-highlights searches
- `\hg` — Shows all highlight groups
- `\gn` — Shows essential highlight groups
- `\hit` — Runs Vim's built-in highlighting test
- `^k` — Previous warning/error in ALE
- `^j` — Next warning/error in ALE

## Installation
```bash
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
git clone -b personal https://github.com/josuegaleas/jvim.git ~/.vim/jvim
ln -s ~/.vim/jvim/.vimrc ~/.vimrc
ln -s ~/.vim/jvim/.jline.vim ~/.jline.vim
vim +PlugInstall +qall
```

## References
- [The Last Statusline For Vim](https://hackernoon.com/the-last-statusline-for-vim-a613048959b2)
