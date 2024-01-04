-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymaps = vim.keymap.set
local opts = { silent = true, noremap = true }
keymaps("i", "jk", "<ESC>")
keymaps("n", "<TAB>", ":tabnext<CR>", opts)
keymaps("n", "<S-TAB>", ":tabprev<CR>", opts)
keymaps("n", "=", "<C-a>", opts)
keymaps("n", "-", "<C-x>", opts)
keymaps("i", "<A-h>", "<Left>")
keymaps("i", "<A-j>", "<Down>")
keymaps("i", "<A-k>", "<Up>")
keymaps("i", "<A-l>", "<Right>")
keymaps("i", "<ESC>", "`")
keymaps("i", "`", "~")
