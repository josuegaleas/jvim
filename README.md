# jvim
Yet another `.vimrc` on GitHub.

**Branches**
- `master` is for beginners
- `personal` is my setup

## Plugins
**Appearance**
- [vim-airline](https://github.com/vim-airline/vim-airline) — For a better statusline and tabline
- [jay](https://github.com/josuegaleas/jay) — My own colorscheme for Vim, Airline, and Lightline
- [vim-polyglot](https://github.com/sheerun/vim-polyglot) — For better syntax highlighting

**Git**
- [fugitive.vim](https://github.com/tpope/vim-fugitive) — For Git functionality within Vim
- [vim-gitgutter](https://github.com/airblade/vim-gitgutter) — For a Git diff in the gutter, and hunk functionality

**Autocompletion**
- [Supertab](https://github.com/ervandew/supertab.git) — For general insert completion
- [delimitMate](https://github.com/Raimondi/delimitMate) — For auto-completion of quotes, parenthesis, brackets, etc

**Other Plugins**
- [vim-plug](https://github.com/junegunn/vim-plug) — For managing plugins and runtime files
- [ALE](https://github.com/w0rp/ale) — For linting and syntax checking
- [commentary.vim](https://github.com/tpope/vim-commentary) — For quick commenting

## Key Mappings
- `\sc` — Toggles Vim's spell-checking mode
- `\pm` — Toggles Vim's paste mode
- `\uh` — Un-highlights searches

## Installation
Having the latest version of Vim is recommended to ensure that everything works.
- On **macOS**, install the latest version with [Homebrew](https://brew.sh/) using `brew install vim`.
- On **Linux**, getting the latest version will vary between distributions.

**Backup** your `.vim` folder and `.vimrc` file. (I am **not** responsible for any data loss.)
```bash
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
git clone https://github.com/josuegaleas/jvim.git ~/.vim/jvim
ln -s ~/.vim/jvim/.vimrc ~/.vimrc
vim +PlugInstall +qall
```

### Powerline Symbols
If you would like to use powerline symbols for vim-airline, add the following line to your `.vimrc` file:
```viml
let g:airline_powerline_fonts=1
```

## References
- Mir Nazim's [Vim setup](http://mirnazim.org/writings/vim-plugins-i-use/)
- Doug Black's [recommendations](http://dougblack.io/words/a-good-vimrc.html)
- Luciano Fiandesio's [Vim setup](http://www.lucianofiandesio.com/vim-configuration-for-happy-java-coding)
