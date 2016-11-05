## How to Get the Latest Version of Vim on macOS
The Vim that comes pre-installed with macOS is usually out of date. The quickest and easiest way to get up to date is to install MacVim through a package manager like [Homebrew](http://brew.sh/) with `brew install macvim`. Instead of trying to update the pre-installed Vim, it is safer to use the Vim binary that comes with MacVim.

After installing MacVim, you can use `mvim -v` to run this Vim binary in terminal. For convenience, you can add `alias vim="mvim -v"` to your `.bash_profile` file in your home directory. With that alias, you can then use `vim` as you normally would, and it will use the Vim binary that comes with MacVim.
