local lsp = require("lsp-zero")

require("mason").setup()
require("mason-lspconfig").setup({
    handlers = {
        function(server_name)
            require("lspconfig")[server_name].setup({})
        end,
    },
})

lsp.on_attach(function(_, bufnr)
    lsp.default_keymaps({buffer = bufnr})
end)

lsp.setup()
