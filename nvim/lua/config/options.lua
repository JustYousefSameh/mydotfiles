vim.g.mapleader = " "
vim.g.localmapleader = " "
vim.g.nofsync = true

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1


local opt = vim.opt
opt.guicursor = ""
opt.nu = true
opt.relativenumber = true

opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true

opt.smartindent = true

opt.wrap = false

opt.hlsearch = false
opt.incsearch = true

opt.termguicolors = true

opt.scrolloff = 8
opt.signcolumn = "yes"
opt.isfname:append("@-@")
opt.laststatus = 3


opt.updatetime = 50
