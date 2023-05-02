--         __    ___ _______  __      _   ___    ________  ___
--        / /   /   /__  /\ \/ /     / | / / |  / /  _/  |/  /
--       / /   / /| | / /  \  /_____/  |/ /| | / // // /|_/ / 
--      / /___/ ___ |/ /__ / /_____/ /|  / | |/ // // /  / /  
--     /_____/_/  |_/____//_/     /_/ |_/  |___/___/_/  /_/   

-------------- install lazy--------------------------------------------------
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", ------------------------------------------------------ latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)




--------------install plugins------------------------------------------------
require("lazy").setup({
	{
  "nvim-neo-tree/neo-tree.nvim",
    dependencies = { 
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
    }
  },
  ------------Status line
  {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'kyazdani42/nvim-web-devicons', lazy = true }
  },
 ------------Status Plugins
  {
  "williamboman/mason.nvim",
  build = ":MasonUpdate" -------------------------------------------------- :MasonUpdate updates registry contents
  },
  ------------PopupTerminal--------------------------------------------------
  {"voldikss/vim-floaterm"},
  ------------fzf-fuzzy-finder-----------------------------------------------
  {"vijaymarupudi/nvim-fzf"},
  { 'ibhagwan/fzf-lua'},
  { 'junegunn/fzf', build = './install --bin', },
  ------------Themes-Colorchemes---------------------------------------------
  { "catppuccin/nvim", name = "catppuccin" },
  {"Mofiqul/dracula.nvim"},
  ------------The-Hardest-Plugin-ithink-coc-auto-compl-----------------------
  {'neoclide/coc.nvim',branch = 'release',build = 'yarn install --frozen-lockfile'},
  ------------telescope------------------------------------------------------
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.1',
      dependencies = { 'nvim-lua/plenary.nvim',
      "debugloop/telescope-undo.nvim",}
  },
  ------------Treesitter-----------------------------------------------------
  {"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"},
  ------------Auto Tag-------------------------------------------------------
  {'windwp/nvim-ts-autotag'},
  ------------Auto Close-----------------------------------------------------
  {'m4xshen/autoclose.nvim'},
  ------------Leader Guide---------------------------------------------------
  {
    "folke/which-key.nvim",
    config = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 300
    end,
  },
   ------------Comment gcc&gc-------------------------------------------------
  {'terrortylor/nvim-comment'},
  ------------Visual line when tab ------------------------------------------
  { "lukas-reineke/indent-blankline.nvim" },

})
