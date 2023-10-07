local highlight = {
    "RainbowRed",
    "RainbowYellow",
    "RainbowBlue",
    "RainbowOrange",
    "RainbowGreen",
    "RainbowViolet",
    "RainbowPink",
}
local hooks = require "ibl.hooks"
-- create the highlight groups in the highlight setup hook, so they are reset
-- every time the colorscheme changes
hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
    vim.api.nvim_set_hl(0, "RainbowRed", { fg = "#ff5555" })
    vim.api.nvim_set_hl(0, "RainbowYellow", { fg = "#f1fa8c" })
    vim.api.nvim_set_hl(0, "RainbowBlue", { fg = "#8be9fd" })
    vim.api.nvim_set_hl(0, "RainbowOrange", { fg = "#ffb86c" })
    vim.api.nvim_set_hl(0, "RainbowGreen", { fg = "#50fa7b" })
    vim.api.nvim_set_hl(0, "RainbowViolet", { fg = "#bd93f9" })
    vim.api.nvim_set_hl(0, "RainbowPink", { fg = "#ff79c6" })
end)

vim.g.rainbow_delimiters = { highlight = highlight }
require("ibl").setup {
	indent = {
		highlight = highlight,
	},
	whitespace = {
		remove_blankline_trail = false
	},
	scope = {
		enabled = false,
	}
}

hooks.register(hooks.type.SCOPE_HIGHLIGHT, hooks.builtin.scope_highlight_from_extmark)
