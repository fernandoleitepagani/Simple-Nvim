<div align="center">

# Simple-Nvim

**My Neovim Configuration. Feel free to build off of mine!**

[![Neovim](https://img.shields.io/badge/neovim-57A143?style=flat-square&logo=neovim&logoColor=white)](#)
[![Lua](https://img.shields.io/badge/lua-2C2D72?style=flat-square&logo=lua&logoColor=white)](#)
[![License](https://img.shields.io/badge/License-MIT-yellow.svg?style=flat-square)](LICENSE)

</div>
<br>

>[!IMPORTANT]
> Before starting, make sure you have:
> - **neovim**(ofc)
> - a [nerd font](https://www.nerdfonts.com/)
> - fzf

<br> 
<img width="1911" height="1043" alt="image" src="https://github.com/user-attachments/assets/bde3e9a3-83f3-4ac2-a5a6-1b0246259c04" />

### Quickinstall
First, make sure to unninstal any config files you may have
```shell
sudo rm -rf ~/.config/nvim
```
then after that, just run the command below
```shell
cd ~/.config/ && git clone https://github.com/fernandoleitepagani/Simple-Nvim && mv Simple-Nvim nvim
```
that it! Enjoy Neovim 🙂

### File Tree
```shell
~/.config/nvim/
├── init.lua
├── lazy-lock.json
└── lua
    ├── configs
    │   ├── init.lua
    │   ├── init.lua.save
    │   ├── lazy.lua
    │   ├── options.lua
    │   └── remap.lua
    └── plugins
        ├── alpha.lua
        ├── colors.lua
        ├── debugging.lua
        ├── fzf-lua.lua
        ├── mini.lua
        ├── nvim-lspconfig.lua
        ├── oneliners.lua
        ├── render-markdown.lua
        ├── treesitter.lua
        └── which-key.lua
```
### Options
```lua
vim.opt.number = true --line numbers
vim.opt.cursorline = true --cursor line
vim.opt.relativenumber = true --relative line number
vim.opt.shiftwidth = 4 --less indentation space
```

### Remap
```lua
vim.g.mapleader = " " --remap <leader> key to SPACE
vim.keymap.set("n", "<leader>cd", vim.cmd.Ex) --<leader>+cd goes to Explorer(netrw)

```
### Plugin Manager
I use the [lazy.nvim](https://lazy.folke.io/) package manager. It works great, it's simple to understand and use.

### Plugins
- [alpha.nvim](https://github.com/goolord/alpha-nvim)
- [colors.nvim](https://github.com/roycrippen4/colors.nvim)
- [debugging.nvim](https://github.com/mfussenegger/nvim-dap)
- [fzf-lua](https://github.com/ibhagwan/fzf-lua)
- [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)
- [render-markdown.nvim](https://github.com/MeanderingProgrammer/render-markdown.nvim)
- [treesitter.nvim](https://github.com/nvim-treesitter/nvim-treesitter)
- [which-key.nvim](https://github.com/folke/which-key.nvim)
- [mini.nvim](https://github.com/nvim-mini/mini.nvim)
  - [mini.pairs](https://github.com/nvim-mini/mini.pairs)
  - [mini.sessions](https://github.com/nvim-mini/mini.sessions)
- oneliners
  - [vim-fugitive](https://github.com/tpope/vim-fugitive)
  - [nvim-highlight-colors](https://github.com/brenoprata10/nvim-highlight-colors)
  - [Comment.nvim](https://github.com/numToStr/Comment.nvim)
  - [bufferline.nvim](https://github.com/akinsho/bufferline.nvim)
  - [lazydev.nvim](https://github.com/folke/lazydev.nvim)
  - [nvim-ts-autotag](https://github.com/windwp/nvim-ts-autotag)
 
