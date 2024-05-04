vim.cmd("packadd packer.nvim")

return require("packer").startup(function(use)
    use("wbthomason/packer.nvim")

    use("rayhan-wijaya/my-vim-fugitive")
    use("rayhan-wijaya/my-vim-diff-toggle")

    use("tpope/vim-surround")
    use("tpope/vim-repeat")
    use("tpope/vim-commentary")
    use("tpope/vim-sleuth")

    use("justinmk/vim-dirvish")
    use("mbbill/undotree")

    use({
        "VonHeikemen/lsp-zero.nvim",
        branch = "v2.x",
        requires = {
            {"neovim/nvim-lspconfig"},
            {
                "williamboman/mason.nvim",
                run = function()
                    pcall(vim.cmd, "MasonUpdate")
                end,
            },
            {"williamboman/mason-lspconfig.nvim"},

            {"hrsh7th/nvim-cmp"},
            {"hrsh7th/cmp-nvim-lsp"},
            {"L3MON4D3/LuaSnip"}
        }
    })

    use({
        "williamboman/mason.nvim",
        run = ":MasonUpdate"
    })
end)
