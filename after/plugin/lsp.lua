local lsp = require("lsp-zero").preset({})

lsp.on_attach(function(_, bufnr)
    lsp.default_keymaps({buffer = bufnr})
end)

-- (Optional) Configure lua language server for neovim
require("lspconfig").lua_ls.setup(lsp.nvim_lua_ls())

lsp.set_sign_icons({
    error = "",
    warn = "",
    hint = "",
    info = "",
})

lsp.on_attach(function (_, bufnr)
    local opts = { buffer = bufnr, remap = false }

    vim.keymap.set("n", "<leader>rs", vim.lsp.buf.rename, opts)
    vim.keymap.set("n", "<leader>re", vim.lsp.buf.references, opts)
    vim.keymap.set("n", "<leader>A", vim.lsp.buf.code_action, opts)
    vim.keymap.set("n", "gl", vim.diagnostic.open_float, opts)
    vim.keymap.set("n", "<leader>]d", vim.diagnostic.goto_next, opts)
    vim.keymap.set("n", "<leader>[d", vim.diagnostic.goto_prev, opts)
    vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
end)

lsp.setup()
