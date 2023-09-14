--         __    ___ _______  __      _   ___    ________  ___
--        / /   /   /__  /\ \/ /     / | / / |  / /  _/  |/  /
--       / /   / /| | / /  \  /_____/  |/ /| | / // // /|_/ / 
--      / /___/ ___ |/ /__ / /_____/ /|  / | |/ // // /  / /  
--     /_____/_/  |_/____//_/     /_/ |_/  |___/___/_/  /_/   lazy

-- install lazy--
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)




--install plugins--
require("lazy").setup({
	--Neo tree ---
	{
  "nvim-neo-tree/neo-tree.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
    }
  },
  --Status line --
  {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'kyazdani42/nvim-web-devicons', lazy = true }
  },
	{
		'akinsho/bufferline.nvim', version = "*",
		-- dependencies = 'nvim-tree/nvim-web-devicons'
	},
	
 --Language plugins--
  {
  "williamboman/mason.nvim",
  build = ":MasonUpdate" -- :MasonUpdate updates registry contents
  },
  {'williamboman/mason-lspconfig.nvim'}, -- mason to nvim Language server protocol
	
  --PopupTerminal--
  {'akinsho/toggleterm.nvim', version = "*", config = true},

  --fzf-fuzzy-finder--
  {"vijaymarupudi/nvim-fzf"},
  { 'ibhagwan/fzf-lua'},
  { 'junegunn/fzf', build = './install --bin', },

  --Themes-Colorchemes--
  { "catppuccin/nvim", name = "catppuccin" },
  {"Mofiqul/dracula.nvim"},

  --telescope--
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.1',
      dependencies = { 'nvim-lua/plenary.nvim',
      "debugloop/telescope-undo.nvim",}
  },

  --Treesitter--
  {"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"},

  --Auto Tag--
  {'windwp/nvim-ts-autotag'},

  --Auto Close--
  {'m4xshen/autoclose.nvim'},
  --Leader Guide--
  {
    "folke/which-key.nvim",
    config = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 300
    end,
  },

   --Comment gcc&gc--
  {'terrortylor/nvim-comment'},

  --Visual line when tab --
  { "lukas-reineke/indent-blankline.nvim" },

  --Lsqcongfig for cpm--
  -- all plugin for install cpm--
	{'neovim/nvim-lspconfig'},
	{'hrsh7th/cmp-nvim-lsp'},
	{'hrsh7th/cmp-buffer'},
	{'hrsh7th/cmp-path'},
	{'hrsh7th/cmp-cmdline'},
	{'hrsh7th/nvim-cmp'},
	{'dcampos/nvim-snippy'},
	{'dcampos/cmp-snippy'},
	{'hrsh7th/cmp-vsnip'},
	{'hrsh7th/vim-vsnip'},
	{'mfussenegger/nvim-jdtls'},
	{'williamboman/nvim-lsp-installer'},

	-- Nvim-dev --
	{ "folke/neodev.nvim", opts = {} },
		-- Colorizer for display color on hex and RGB code--
	{'NvChad/nvim-colorizer.lua'},

		-- Tmux navigator--
	{'christoomey/vim-tmux-navigator'},

	-- Debuger --
	{'rcarriga/nvim-dap-ui'},
	{'mfussenegger/nvim-dap'},
  })
