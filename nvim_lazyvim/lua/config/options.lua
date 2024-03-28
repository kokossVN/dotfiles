-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local set = vim.api.nvim_set_option

set("term", "screen-256color")
-- vim.g.barbaric_default = 0
vim.g.maplocalleader = ";"
vim.wo.wrap = true
vim.wo.linebreak = true
vim.opt.mouse = ""
-- vim.g.unikey_bydefault = true
