-- this config created by
--oooo    oooo           oooo                                    
--`888   .8P'            `888                                    
-- 888  d8'     .ooooo.   888  oooo   .ooooo.   .oooo.o  .oooo.o 
-- 88888[      d88' `88b  888 .8P'   d88' `88b d88(  "8 d88(  "8 
-- 888`88b.    888   888  888888.    888   888 `"Y88b.  `"Y88b.  
-- 888  `88b.  888   888  888 `88b.  888   888 o.  )88b o.  )88b 
--o888o  o888o `Y8bod8P' o888o o888o `Y8bod8P' 8""888P' 8""888P' 






----------------------------------Leader-------------------------------------


vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

----------------------------------Nvimconfig---------------------------------

--change font
vim.opt.guifont = { "FiraCode_Nerd_Font_Mono"}
--line number
vim.opt.number = true
--enable mouse in neovim
vim.opt.mouse = 'a'
--using utf-8 to encoding
vim.opt.encoding = "utf-8"
vim.opt.backup = false
vim.opt.writebackup = false
-- Having longer updatetime (default is 4000 ms = 4s) leads to noticeable
-- delays and poor user experience
vim.opt.updatetime = 300
-- Always show the signcolumn, otherwise it would shift the text each time
-- diagnostics appeared/became resolved
vim.opt.signcolumn = "yes"
vim.opt.tm = 300

----------------------------------Keymap-------------------------------------


vim.keymap.set('i','jk','<ESC>:w<CR>')


-----------------------------Other Plugin Keymap-----------------------------
----------------------------------------------------------------------------- Telescope
----------------------------------------------------------------------------- leader-guide


----------------------------------------------------------------------------- Neo tree

vim.keymap.set('n', '<Leader>nt',':Neotree toggle<cr>',{silent = true}) 
vim.keymap.set('n', '<Leader>t',':NeoTreeReveal<cr>',{silent = true}) 
vim.keymap.set('n', '<F8>',':Neotree toggle<cr>',{silent = true}) 


----------------------------------------------------------------------------- Toggleterm
vim.keymap.set('n', '<F7>', '<Cmd>exe v:count1 . "ToggleTerm"<CR>', { silent = true })
vim.keymap.set('t', '<F7>', '<Cmd>exe v:count1 . "ToggleTerm"<CR>', { silent = true })
vim.keymap.set('i', '<F7>', '<Esc><Cmd>exe v:count1 . "ToggleTerm"<CR>', { silent = true })



----------------------------------------------------------------------------- Floaterm (deleted)
-- vim.keymap.set('n', '<F7>', ':FloatermToggle<CR>', {silent = true })
-- vim.keymap.set('t', '<F7>', '<C-\\><C-n>:FloatermToggle<CR>', { silent = true })
-- vim.keymap.set('n', '<Leader>/', ':FloatermToggle<CR>', {silent = true })
-- vim.keymap.set('n', '<F6>', ':FloatermNew --position=center --height=0.89 --width=0.79<CR>', {silent = true })
-- vim.keymap.set('t', '<F8>', '<C-\\><C-n>:FloatermToggle<CR>', { silent = true })
-- vim.keymap.set('t', '<C-n>', '<C-\\><C-n>:FloatermNew<CR>', { silent = true })
-- vim.keymap.set('t', '<C-l>', '<C-\\><C-n>:FloatermNext<CR>', { silent = true })
-- vim.keymap.set('t', '<C-h>', '<C-\\><C-n>:FloatermPrev<CR>', { silent = true })
-- vim.keymap.set('t', '<C-w>', '<C-\\><C-n>:FloatermKill<CR>:FloatermPrev<CR>', { silent = true })


