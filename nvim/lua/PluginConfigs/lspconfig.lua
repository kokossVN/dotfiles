local project_name = vim.fn.fnamemodify(vim.fn.getcwd(), ':p:h:t')
local workspace_dir = '~/java/' .. project_name


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
lspconfig.pkgbuild_language_server.setup ({ capabilities = capabilities })
lspconfig.bashls.setup ({ capabilities = capabilities })
-- lspconfig.java_language_server.setup ({ capabilities = capabilities })


lspconfig.jdtls.setup ({
	capabilities = capabilities,
	cmd = {
		'java',
		'-Declipse.application=org.eclipse.jdt.ls.core.id1',
		'-Dosgi.bundles.defaultStartLevel=4',
		'-Declipse.product=org.eclipse.jdt.ls.core.product',
		'-Dlog.protocol=true',
		'-Dlog.level=ALL',
		'-Xmx1g',
		'--add-modules=ALL-SYSTEM',
		'--add-opens', 'java.base/java.util=ALL-UNNAMED',
		'--add-opens', 'java.base/java.lang=ALL-UNNAMED',
		'-jar',
			'/home/kokoss/.jdtls/eclipse.jdt.ls/org.eclipse.jdt.ls.product/target/repository/plugins/org.eclipse.equinox.launcher_1.6.500.v20230717-2134.jar',
		'-configuration', '/home/kokoss/.jdtls/eclipse.jdt.ls/jdt-last/config_linux',
		'-data', workspace_dir
	},
})



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
