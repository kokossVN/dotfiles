local capabilities = require('cmp_nvim_lsp').default_capabilities()
  -- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.
  -- require('lspconfig')['clangd,lua-lsp,pyright,html,typescript-language-server'].setup { capabilities = capabilities }
  require('lspconfig')['clangd'].setup { capabilities = capabilities }
  require('lspconfig')['pyright'].setup { capabilities = capabilities }
  require('lspconfig')['html'].setup { capabilities = capabilities }
  
  
  local lspconfig = require('lspconfig')
  lspconfig.tsserver.setup{}
