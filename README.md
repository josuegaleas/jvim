### Key Mappings:
- `\sc` — Toggles Vim's spell-checking
- `\pm` — Toggles Vim's paste mode
- `\uh` — Unhighlights searches
- `\nt` — Toggles The NERD Tree's filesystem explorer
- `\cz` — Toggles Undotree's visual undo tree
- `\tb` — Toggles Tagbar's tag explorer
- `\hg` — Shows all highlight groups
- `\gn` — Shows essential highlight groups
- `\hit` — Runs Vim's built-in highlighting test

## Installation
```
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
git clone https://github.com/josuegaleas/jvim.git ~/Projects/jvim
cp ~/Projects/jvim/.vimrc ~/.vimrc
```

### Tagbar Dependency
For Tagbar to function properly, you will need to install [Exuberant Ctags](http://ctags.sourceforge.net/).
- On macOS, you can install Ctags through [Homebrew](http://brew.sh/) with `brew install ctags`
- On Linux, installing Ctags will vary between distributions
