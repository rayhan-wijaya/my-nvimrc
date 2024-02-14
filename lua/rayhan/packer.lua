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
end)
