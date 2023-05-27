-- This file can be loaded by calling `lua require("plugins")` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require("packer").startup(function(use)
  -- Packer can manage itself
  use "wbthomason/packer.nvim"

  use {
	  "nvim-telescope/telescope.nvim", tag = "0.1.1",
	  -- or                            , branch = "0.1.x",
	  requires = { {"nvim-lua/plenary.nvim"} }
  }

  use("nvim-treesitter/nvim-treesitter", {run = ":TSUpdate"})

  use("theprimeagen/harpoon")
  use("mbbill/undotree")
  use("tpope/vim-fugitive")

  use {
      "VonHeikemen/lsp-zero.nvim",
      branch = "v2.x",
      requires = {
          -- LSP Support
          {"neovim/nvim-lspconfig"},             -- Required
          {                                      -- Optional
          "williamboman/mason.nvim",
          run = function()
              pcall(vim.cmd, "MasonUpdate")
          end,
      },
      {"williamboman/mason-lspconfig.nvim"}, -- Optional

      -- Autocompletion
      {"hrsh7th/nvim-cmp"},     -- Required
      {"hrsh7th/cmp-nvim-lsp"}, -- Required
      {"L3MON4D3/LuaSnip"},     -- Required
    }
  }

  use {
      "williamboman/mason.nvim",
      run = ":MasonUpdate" -- :MasonUpdate updates registry contents
  }

  use("tpope/vim-surround")

  -- install without yarn or npm
  use({
    "iamcco/markdown-preview.nvim",
    run = function() vim.fn["mkdp#util#install"]() end,
  })

  use("tpope/vim-commentary")

  use("nvim-tree/nvim-tree.lua")
  use("nvim-tree/nvim-web-devicons")

  use("cocopon/iceberg.vim")

  use("ranjithshegde/ccls.nvim")

  use("xiyaowong/transparent.nvim")
end)
