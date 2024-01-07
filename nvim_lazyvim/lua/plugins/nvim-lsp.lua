return {
  "neovim/nvim-lspconfig",
  ---@class PluginLspOpts
  opts = {
    ----@type lspconfig.options
    servers = {
      emmet_ls = {
        filetypes = {
          "css",
          "eruby",
          "html",
          "javascript",
          "javascriptreact",
          "less",
          "sass",
          "scss",
          "svelte",
          "pug",
          "typescriptreact",
          "vue",
        },
      },
      -- pyright will be automatically installed with mason and loaded with lspconfig
      pyright = {},
    },
  },
}
