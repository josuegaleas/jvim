jvim
=====
My personal setup for terminal Vim

Included
--------
* [Pathogen](https://github.com/tpope/vim-pathogen) — For managing plugins and runtime files.
* [Airline](https://github.com/bling/vim-airline) — For a better statusline and tabline.
* [Syntastic](https://github.com/scrooloose/syntastic) — For syntax checking.
* [Molokai](https://github.com/tomasr/molokai) — Personal favorite colorscheme.
* [Fugitive](https://github.com/tpope/vim-fugitive) — For Git functionality within Vim.
* [GitGutter](https://github.com/airblade/vim-gitgutter) — For Git diff in the gutter, and hunk functionality.
* [DelimitMate](https://github.com/Raimondi/delimitMate) — For auto-completion of quotes, parenthesis, brackets, etc.
* [Supertab](https://github.com/ervandew/supertab.git) — For general insert completion.
* [NERDTree](https://github.com/scrooloose/nerdtree.git) — For a filesystem explorer within Vim.
* [Undotree](https://github.com/mbbill/undotree) — For visualizing the undo tree.

Usage
-----
### Keyboard Shortcuts:
* `\sc` — Toggles Vim's spell-checking
* `\cz` — Toggles Undotree's visual undo tree
* `\nt` — Toggles NERDTree's filesystem explorer

Installation
------------
I highly recommend having the latest version of Vim installed to ensure that everything functions properly, as some plugins require later versions of Vim. If you are running on OS X, go down below to see a small guide on how to get the latest version of Vim.

I also recommend having a font that can support powerline symbols. I personally use [Hack](https://github.com/chrissimpkins/Hack) which comes with powerline symbols, but you can also use pre-patched fonts from [here](https://github.com/powerline/fonts). Your preferred font may already have powerline symbol support, but you should also check in with the author of the font. If you do not want to use powerline symbols, you can just comment out or delete the following line from the `vimrc` file: `let g:airline_powerline_fonts=1`.

### For Linux/OS X users:
**Backup** your `.vim` folder and `.vimrc` file. (I am **not** responsible for any data loss.)
```
git clone --recursive https://github.com/josuegaleas/jvim.git ~/jvim
cd ~/jvim && git submodule foreach git checkout master && cd ~
ln -s ~/jvim ~/.vim
ln -s ~/jvim/vimrc ~/.vimrc
```
To update submodules:
```
cd ~/jvim && git submodule foreach git pull
```

### For Windows users:
Coming soon...

How to Get the Latest Version of Terminal Vim on OS X
-----------------------------------------------------
The Vim that comes pre-installed with OS X is usually out of date. The quickest and easiest way to get up to date is to install MacVim through a package manager like [MacPorts](https://www.macports.org/) or [Homebrew](http://brew.sh/). Instead of trying to update the pre-installed Vim, it would be safer to just use the Vim binary that comes with MacVim. After installing MacVim, you can use `mvim -v` to run this Vim binary. For convenience, you can add this line to your `.bash_profile` file: `alias vim="mvim -v"`. You can then use `vim` as you normally would and it will use the Vim binary that comes with MacVim.

Inspired By
-----------
* Mir Nazim's [Vim setup](http://mirnazim.org/writings/vim-plugins-i-use/)
* Doug Black's [recommendations](http://dougblack.io/words/a-good-vimrc.html)
* Luciano Fiandesio's [Vim setup](http://www.lucianofiandesio.com/vim-configuration-for-happy-java-coding)
