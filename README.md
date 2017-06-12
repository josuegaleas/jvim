## Key Mappings
- `\sc` — Toggles Vim's spell-checking
- `\pm` — Toggles Vim's paste mode
- `\uh` — Unhighlights searches
- `\nt` — Toggles The NERD Tree's filesystem explorer
- `\tb` — Toggles Tagbar's tag explorer
- `\hg` — Shows all highlight groups
- `\gn` — Shows essential highlight groups
- `\hit` — Runs Vim's built-in highlighting test

## Installation
```
brew install ctags grip
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
git clone https://github.com/josuegaleas/jvim.git ~/Projects/jvim
cd ~/Projects/jvim && git checkout personal
ln -s ~/Projects/jvim/.vimrc ~/.vimrc
vim +PluginInstall +qall
```
