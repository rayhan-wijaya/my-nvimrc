local lsp = require("lsp-zero")

require("mason").setup()
require("mason-lspconfig").setup({
	handlers = {
		function(server_name)
			require("lspconfig")[server_name].setup({})
		end,
		["lua_ls"] = function()
			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup({
				settings = {
					Lua = {
						diagnostics = {
							globals = {
								"bit",
								"vim",
								"it",
								"describe",
								"before_each",
								"after_each",
							},
						},
					},
				},
			})
		end
	},
})

lsp.on_attach(function(_, bufnr)
	lsp.default_keymaps({buffer = bufnr})
end)

lsp.setup()
