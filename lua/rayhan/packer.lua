vim.cmd("packadd packer.nvim")

return require("packer").startup(function(use)
  use "wbthomason/packer.nvim"

  use('crispgm/telescope-heading.nvim')
  use({
	  "nvim-telescope/telescope.nvim", tag = "0.1.1",
	  requires = { {"nvim-lua/plenary.nvim"} }
  })


  use("nvim-treesitter/nvim-treesitter", {run = ":TSUpdate"})

  use("theprimeagen/harpoon")
  use("mbbill/undotree")

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

  use("rayhan-wijaya/my-vim-fugitive")
  use("tpope/vim-surround")
  use("tpope/vim-commentary")
  use("tpope/vim-repeat")

  -- use("nvim-tree/nvim-tree.lua")
  use("nvim-tree/nvim-web-devicons")

  use("romainl/Apprentice")

  use("ranjithshegde/ccls.nvim")

  use("rayhan-wijaya/my-nvim-spectre")

  use("Gavinok/vim-troff")
end)
