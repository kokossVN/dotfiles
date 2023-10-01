local capabilities = require('cmp_nvim_lsp').default_capabilities()
-- require('lspconfig')['clangd,lua-lsp,pyright,html,typescript-language-server'].setup { capabilities = capabilities }

local lspconfig = require('lspconfig')
-- local lsp_defaults = lspconfig.util.default_config

-- Language install
lspconfig.html.setup ({ capabilities = capabilities })
lspconfig.pyright.setup ({ capabilities = capabilities })
lspconfig.vimls.setup ({ capabilities = capabilities })
lspconfig.csharp_ls.setup ({ capabilities = capabilities })
lspconfig.tsserver.setup ({ capabilities = capabilities })
lspconfig.cssls.setup ({ capabilities = capabilities })
lspconfig.clangd.setup ({ capabilities = capabilities })
lspconfig.cssmodules_ls.setup ({ capabilities = capabilities })
lspconfig.java_language_server.setup ({ capabilities = capabilities })
lspconfig.jdtls.setup ({ capabilities = capabilities })
lspconfig.lua_ls.setup ({
	capabilities = capabilities,
	settings = {
		Lua = {
			completion = {
				callSnippet = "Replace"
			}
		}
	},
})
