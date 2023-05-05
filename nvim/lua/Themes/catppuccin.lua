require("catppuccin").setup({
	compile_path = vim.fn.stdpath "cache" .. "/catppuccin",
	flavor = "mocha",
	background = {dark = "mocha",},
	transparent_background = true,

        -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
})

-- setup must be called before loading
vim.cmd.colorscheme "catppuccin"
