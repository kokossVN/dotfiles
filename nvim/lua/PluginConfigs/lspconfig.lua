local capabilities = require('cmp_nvim_lsp').default_capabilities()
-- require('lspconfig')['clangd,lua-lsp,pyright,html,typescript-language-server'].setup { capabilities = capabilities }

local lspconfig = require('lspconfig')
-- local lsp_defaults = lspconfig.util.default_config


lspconfig.html.setup ({ capabilities = capabilities })
lspconfig.clangd.setup ({ capabilities = capabilities })
lspconfig.pyright.setup ({ capabilities = capabilities })
lspconfig.vimls.setup ({ capabilities = capabilities })
lspconfig.csharp_ls.setup ({ capabilities = capabilities })
lspconfig.lua_ls.setup ({ capabilities = capabilities })
lspconfig.tsserver.setup ({ capabilities = capabilities })
