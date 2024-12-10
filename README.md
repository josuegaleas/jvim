# jvim
Yet another `.vimrc` on GitHub. Powered by [vim-plug](https://github.com/junegunn/vim-plug).

## Plugins
**Appearance**
- [jay](https://github.com/josuegaleas/jay)
- [vim-polyglot](https://github.com/sheerun/vim-polyglot)

**Git**
- [fugitive.vim](https://github.com/tpope/vim-fugitive)
- [vim-gitgutter](https://github.com/airblade/vim-gitgutter)

**Other Tools**
- [supertab](https://github.com/ervandew/supertab)
- [Asynchronous Lint Engine](https://github.com/dense-analysis/ale)
- [commentary.vim](https://github.com/tpope/vim-commentary)
- [Vim Better Whitespace](https://github.com/ntpeters/vim-better-whitespace)
- [local_vimrc](https://github.com/LucHermitte/local_vimrc)

**Colorscheme Development** (Disabled By Default)
- [Molokai Color Scheme](https://github.com/tomasr/molokai)
- [vim-airline](https://github.com/vim-airline/vim-airline)
- [lightline.vim](https://github.com/itchyny/lightline.vim)
- [Xterm Color Table](https://github.com/guns/xterm-color-table.vim)
- [Colorizer](https://github.com/chrisbra/Colorizer)
- [vim-HiLinkTrace](https://github.com/gerw/vim-HiLinkTrace)
- [Vim's colorscheme incubator](https://github.com/vim/colorschemes)

## Key Mappings
**General Use**
- `\sc` — Toggles Vim's spellchecking
- `\pm` — Toggles Vim's paste mode
- `\uh` — Un-highlights searches
- `^k` — Previous warning/error in ALE
- `^j` — Next warning/error in ALE

**Colorscheme Development** (Disabled By Default)
- `\hg` — Shows all highlight groups
- `\gn` — Shows essential highlight groups
- `\hit` — Runs Vim's built-in highlighting test

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
ln -s ~/.vim/jvim/.jline.vim ~/.jline.vim
vim +PlugInstall +qall
```

## References
- Mir Nazim's [setup](https://web.archive.org/web/20180430054624/http://mirnazim.org/writings/vim-plugins-i-use/)
- Doug Black's [recommendations](https://web.archive.org/web/20200202000014/http://dougblack.io/words/a-good-vimrc.html)
- Luciano Fiandesio's [setup](https://web.archive.org/web/20230309022904/http://fiandes.io/vim-configuration-for-happy-java-coding/)
- Kade Killary's [tutorial](https://web.archive.org/web/20200905080211/https://hackernoon.com/the-last-statusline-for-vim-a613048959b2)
