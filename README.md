# Overview
This is my current `neovim` configuration. It builds on top of the `neovim` [kickstart modular](https://github.com/dam9000/kickstart-modular.nvim) repo.

Note that this is vanilla `neovim` and uses `lazy` as a package manager.
Also note the `gruvbox` theme won't work without an additional shell script

## Getting started
1. Make sure you have `neovim` installed on your system
2. This config assumes you have [fzf](https://github.com/junegunn/fzf.vim) and [ripgrep](https://github.com/BurntSushi/ripgrep) installed too. These are needed for `telescope`.
3. Clone this repo to your `neovim` config location. For a default install, run: `git clone git@github.com:johnnylarner/nvim.git ~/.config/nvim`
4. Run `nvim` and use the leader `Space` to start searching for stuff
5. You can run the command `:checkhealth` to assert that everything is working as expected
