jvim
====
Personal Setup for Terminal Vim

Included
--------
- [Vundle](https://github.com/VundleVim/Vundle.vim) — For managing plugins and runtime files
- [Airline](https://github.com/vim-airline/vim-airline) — For a better statusline and tabline
	- [Airline Themes](https://github.com/vim-airline/vim-airline-themes) — For themes for Airline
- [Syntastic](https://github.com/scrooloose/syntastic) — For syntax checking
- [Molokai](https://github.com/tomasr/molokai) — Personal favorite colorscheme
- [Fugitive](https://github.com/tpope/vim-fugitive) — For Git functionality within Vim
- [GitGutter](https://github.com/airblade/vim-gitgutter) — For Git diff in the gutter, and hunk functionality
- [DelimitMate](https://github.com/Raimondi/delimitMate) — For auto-completion of quotes, parenthesis, brackets, etc
- [Supertab](https://github.com/ervandew/supertab.git) — For general insert completion
- [NERDTree](https://github.com/scrooloose/nerdtree.git) — For a filesystem explorer within Vim
- [Undotree](https://github.com/mbbill/undotree) — For visualizing the undo tree
- [Tagbar](https://github.com/majutsushi/tagbar) — For browsing tags

Usage
-----
### Keyboard Shortcuts:
- `\sc` — Toggles Vim's spell-checking
- `\pm` — Toggles Vim's paste mode
- `\nt` — Toggles NERDTree's filesystem explorer
- `\cz` — Toggles Undotree's visual undo tree
- `\tb` — Toggles Tagbar's tag explorer

Installation
------------
I highly recommend having the latest version of Vim installed to ensure that everything functions properly, as some plugins require later versions of Vim. If you are running on **OS X**, go down below to see a small guide on how to get the latest version of Vim. If you are running on **Linux**, getting the latest version of Vim will vary between distributions.

I also recommend having a font that can support powerline symbols. I personally use [Hack](https://github.com/chrissimpkins/Hack) which comes with powerline symbols, but you can also use pre-patched fonts from [here](https://github.com/powerline/fonts). Your preferred font may already have powerline symbol support, but you should also check in with the author of the font. If you do not want to use powerline symbols, you can just comment out or delete the following line from the `vimrc` file: `let g:airline_powerline_fonts=1`.

### For Linux/OS X
**Backup** your `.vim` folder and `.vimrc` file. (I am **not** responsible for any data loss.)
```
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
git clone https://github.com/josuegaleas/jvim.git ~/.vim/jvim
ln -s ~/.vim/jvim/vimrc ~/.vimrc
```
To install plugins, launch `vim`, ignore the initial errors, and use the command `:PluginInstall`.

### For Windows
Coming soon...

### Tagbar Dependency
For Tagbar to function properly, you will need to install [Exuberant Ctags](http://ctags.sourceforge.net/).
- On Linux, installing Ctags will vary between distributions.
- On OS X, you can install Ctags through [Homebrew](http://brew.sh/) with `brew install ctags`.
- On Windows, coming soon...

Maintenance
-----------
To update `.vimrc`, use `cd ~/.vim/jvim && git pull -v && cd ~`.

To update plugins, launch `vim` and use the command `:PluginUpdate`.

How to Get the Latest Version of Terminal Vim on OS X
-----------------------------------------------------
The Vim that comes pre-installed with OS X is usually out of date. The quickest and easiest way to get up to date is to install MacVim through a package manager like [Homebrew](http://brew.sh/) with `brew install macvim`. Instead of trying to update the pre-installed Vim, it is safer to use the Vim binary that comes with MacVim.

After installing MacVim, you can use `mvim -v` to run this Vim binary. For convenience, you can add `alias vim="mvim -v"` to your `.bash_profile` file. With that alias, you can then use `vim` as you normally would, and it will use the Vim binary that comes with MacVim.

Inspired By
-----------
- Mir Nazim's [Vim setup](http://mirnazim.org/writings/vim-plugins-i-use/)
- Doug Black's [recommendations](http://dougblack.io/words/a-good-vimrc.html)
- Luciano Fiandesio's [Vim setup](http://www.lucianofiandesio.com/vim-configuration-for-happy-java-coding)
