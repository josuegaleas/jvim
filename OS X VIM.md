## How to Get the Latest Version of Terminal Vim on OS X
The Vim that comes pre-installed with OS X is usually out of date. The quickest and easiest way to get up to date is to install MacVim through a package manager like [Homebrew](http://brew.sh/) with `brew install macvim`. Instead of trying to update the pre-installed Vim, it is safer to use the Vim binary that comes with MacVim.

After installing MacVim, you can use `mvim -v` to run this Vim binary. For convenience, you can add `alias vim="mvim -v"` to your `.bash_profile` file. With that alias, you can then use `vim` as you normally would, and it will use the Vim binary that comes with MacVim.
