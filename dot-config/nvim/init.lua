require('config') ------------------------------- Away load frist
require('PluginConfigs.lazy') ------------------- Plugin Manager
require('PluginConfigs.mason') ------------------ Language config
require('PluginConfigs.neotree') ---------------- Nerd tree
require('PluginConfigs.floaterm') --------------- Pop-up terminal
require('PluginConfigs.lualine') ---------------- Status bar
-- require('PluginConfigs.coc') -------------------- Auto Complete
require("PluginConfigs/cmp")
require("PluginConfigs/lspconfig")
require('PluginConfigs.treesitter') ------------- Highlight code support
require('PluginConfigs.autoclose') -------------- Auto Close brackets
require('PluginConfigs.telescope') -------------- Finder
require('PluginConfigs.blankline') -------------- Tab Highlight
require('PluginConfigs.which-key') --------------Leader-guide--Default 
require('PluginConfigs.nvim-comment')------------ gcc or gc to comment
require('PluginConfigs.colorizer')--------------- Display color when using hex or RGB
-------------------- Themes ---------------------
-- require('Themes.catppuccin')
require('Themes.dracula')