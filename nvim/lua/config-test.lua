
-- nnoremap <silent><c-t> <Cmd>exe v:count1 . "ToggleTerm"<CR>
-- vim.api.nvim_set_keymap('n','<c-t>',[[<Cmd>exe v:count1 . "ToggleTerm"<CR>]],{ noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<c-t>',  [[<Cmd>exe v:count1 . "ToggleTerm"<CR>]], { noremap = true, silent = true })

vim.cmd("inoremap <silent><c-t> <Esc><Cmd>exe v:count1 . "ToggleTerm"<CR>")

-- inoremap <silent><c-t> <Esc><Cmd>exe v:count1 . "ToggleTerm"<CR>
vim.keymap.set('n', '<F7>', '<Cmd>exe v:count1 . "ToggleTerm"<CR>', { silent = true })
vim.keymap.set('i', '<F8>', '<Esc><Cmd>exe v:count1 . "ToggleTerm"<CR>', { silent = true })
--
--
--
-- vim.api.nvim_set_keymap('n', '<Leader>tegf',  [[<Cmd>lua require('telescope.builtin').git_files()<CR>]], { noremap = true, silent = true })
