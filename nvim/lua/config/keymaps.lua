vim.g.mapleader = " "

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<leader>w", "<cmd>w<cr><esc>")
vim.keymap.set("n", "<leader>q", "<cmd>q<cr><esc>")

vim.keymap.set("n", "p", "P")
vim.keymap.set("v", "p", "P")
