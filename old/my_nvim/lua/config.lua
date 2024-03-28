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
vim.opt.guifont = {"FiraCode_Nerd_Font_Mono"}
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
-- set os clipboard
vim.api.nvim_set_option("clipboard","unnamedplus")
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
-- vim.opt.expandtab = 1
vim.opt.cursorline = true
vim.opt.termguicolors = true
vim.cmd([[autocmd FileType * set formatoptions-=ro]])
-- Keymap
vim.keymap.set('i','jk','<ESC>')
vim.keymap.set('n','s','<>')

-- split workspace
vim.keymap.set('n', 'sv', ':vsplit<CR>')
--move cusor for arrow key
vim.keymap.set('n','sl','<C-w>l')
vim.keymap.set('n','sh','<C-w>h')
vim.keymap.set('n','sj','<C-w>j')
vim.keymap.set('n','sk','<C-w>k')



-- tab view
vim.keymap.set('n','<Tab>',':tabnext<CR>', {silent = true})
vim.keymap.set('n','<S-Tab>',':tabprevious<CR>', {silent = true})
vim.keymap.set('n','<Leader>nt',':tabnew<CR>', {silent = true})

--Move cusor in insert mode
vim.keymap.set('i','<A-h>','<Left>')
vim.keymap.set('i','<A-j>','<Down>')
vim.keymap.set('i','<A-k>','<Up>')
vim.keymap.set('i','<A-l>','<Right>')
-- Other Plugin Keymap
-- Neo tree
vim.keymap.set('n', '<Leader>t',':Neotree toggle<cr>',{silent = true})


--Toggleterm
vim.keymap.set('n', '<F7>', '<Cmd>exe v:count1 . "ToggleTerm"<CR>', { silent = true })
vim.keymap.set('t', '<F7>', '<Cmd>exe v:count1 . "ToggleTerm"<CR>', { silent = true })
vim.keymap.set('i', '<F7>', '<Esc><Cmd>exe v:count1 . "ToggleTerm"<CR>', { silent = true })

-- Floaterm (deleted)
-- vim.keymap.set('n', '<F7>', ':FloatermToggle<CR>', {silent = true })
-- vim.keymap.set('t', '<F7>', '<C-\\><C-n>:FloatermToggle<CR>', { silent = true })
-- vim.keymap.set('n', '<Leader>/', ':FloatermToggle<CR>', {silent = true })
-- vim.keymap.set('n', '<F6>', ':FloatermNew --position=center --height=0.89 --width=0.79<CR>', {silent = true })
-- vim.keymap.set('t', '<F8>', '<C-\\><C-n>:FloatermToggle<CR>', { silent = true })
-- vim.keymap.set('t', '<C-n>', '<C-\\><C-n>:FloatermNew<CR>', { silent = true })
-- vim.keymap.set('t', '<C-l>', '<C-\\><C-n>:FloatermNext<CR>', { silent = true })
-- vim.keymap.set('t', '<C-h>', '<C-\\><C-n>:FloatermPrev<CR>', { silent = true })
-- vim.keymap.set('t', '<C-w>', '<C-\\><C-n>:FloatermKill<CR>:FloatermPrev<CR>', { silent = true })


--Tmux Navigator

vim.keymap.set('n','<C-h>',':TmuxNavigateLeft<CR>',{silent = true})
vim.keymap.set('n','<C-j>',':TmuxNavigateDown<CR>',{silent = true})
vim.keymap.set('n','<C-k>',':TmuxNavigateUp<CR>',{silent = true})
vim.keymap.set('n','<C-l>',':TmuxNavigateRight<CR>',{silent = true})

vim.keymap.set('n','<C-Left>',':TmuxNavigateLeft<CR>',{silent = true})
vim.keymap.set('n','<C-Down>',':TmuxNavigateDown<CR>',{silent = true})
vim.keymap.set('n','<C-Up>',':TmuxNavigateUp<CR>',{silent = true})
vim.keymap.set('n','<C-Right>',':TmuxNavigateRight<CR>',{silent = true})
-- vim.g.unikey_bydefault=true
