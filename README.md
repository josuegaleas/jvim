# jvim
Yet another `.vimrc` on GitHub.

## Included Plugins
- [Vundle](https://github.com/VundleVim/Vundle.vim) — For managing plugins and runtime files
- *Appearance*
	- [vim-airline](https://github.com/vim-airline/vim-airline) — For a better statusline and tabline
	- [jay](https://github.com/josuegaleas/jay) — My own Vim and Airline colorschemes
- *Git*
	- [fugitive.vim](https://github.com/tpope/vim-fugitive) — For Git functionality within Vim
	- [vim-gitgutter](https://github.com/airblade/vim-gitgutter) — For Git diff in the gutter, and hunk functionality
- *Autocompletion*
	- [Supertab](https://github.com/ervandew/supertab.git) — For general insert completion
	- [delimitMate](https://github.com/Raimondi/delimitMate) — For auto-completion of quotes, parenthesis, brackets, etc
- *Other Tools*
	- [Syntastic](https://github.com/scrooloose/syntastic) — For syntax checking
	- [The NERD Tree](https://github.com/scrooloose/nerdtree.git) — For a filesystem explorer within Vim
	- [Tagbar](https://github.com/majutsushi/tagbar) — For browsing tags and viewing the outline
	- [commentary.vim](https://github.com/tpope/vim-commentary) — For quick commenting

## Usage
### Key Mappings:
- `\sc` — Toggles Vim's spell-checking
- `\pm` — Toggles Vim's paste mode
- `\uh` — Unhighlights searches
- `\nt` — Toggles The NERD Tree's filesystem explorer
- `\cz` — Toggles Undotree's visual undo tree
- `\tb` — Toggles Tagbar's tag explorer

## Installation
Latest version of Vim is recommended to ensure that everything functions properly, as some plugins require later versions of Vim.
- If you are running on **macOS**, click [here](./macOS.md) to see a small guide on how to get the latest version of Vim.
- If you are running on **Linux**, getting the latest version of Vim will vary between distributions.

**Backup** your `.vim` folder and `.vimrc` file. (I am **not** responsible for any data loss.)
```
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
git clone https://github.com/josuegaleas/jvim.git ~/.vim/jvim
ln -s ~/.vim/jvim/.vimrc ~/.vimrc
vim +PluginInstall +qall
```

### Tagbar Dependency
For Tagbar to function properly, you will need to install [Exuberant Ctags](http://ctags.sourceforge.net/).
- On **macOS**, you can install Ctags through [Homebrew](http://brew.sh/) with `brew install ctags`
- On **Linux**, installing Ctags will vary between distributions

### Powerline Symbols
If you would like to use powerline symbols for vim-airline, add the following line to your `.vimrc` file:
```
let g:airline_powerline_fonts=1
```

## Maintenance
To update `.vimrc`, use `cd ~/.vim/jvim && git pull && cd ~`.

To update plugins, use `vim +PluginUpdate`.

## References
- Mir Nazim's [Vim setup](http://mirnazim.org/writings/vim-plugins-i-use/)
- Doug Black's [recommendations](http://dougblack.io/words/a-good-vimrc.html)
- Luciano Fiandesio's [Vim setup](http://www.lucianofiandesio.com/vim-configuration-for-happy-java-coding)
