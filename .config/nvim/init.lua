-- my nvim config yippee :3

local vim = vim -- suppress lsp warnings
local o = vim.opt
o.showmatch = true
o.ignorecase = true
o.smartcase = true
o.swapfile = false
o.hlsearch = true
o.incsearch = true
o.tabstop = 4
o.softtabstop = 4
o.shiftwidth = 4
o.autoindent = true
o.expandtab = true
o.number = true
o.relativenumber = true
o.ttyfast = true
o.mouse = "a"
o.wildmode = { "longest", "list" }

local g = vim.g
g.mapleader = ","
g.maplocalleader = ","

vim.cmd.highlight({ "NonText", "guibg=NONE ctermbg=NONE" })
vim.cmd.highlight({ "Normal", "guibg=NONE ctermbg=NONE" })
vim.cmd.highlight({ "NormalNC", "guibg=NONE ctermbg=NONE" })
vim.cmd.highlight({ "SignColumn", "guibg=NONE ctermfg=NONE ctermbg=NONE" })
