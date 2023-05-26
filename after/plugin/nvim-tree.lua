-- examples for your init.lua

-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- empty setup using defaults
require("nvim-tree").setup()

local onAttach = function(bufnr)
  local api = require("nvim-tree.api")

  api.config.mappings.default_on_attach(bufnr)
  vim.keymap.del("n", "<C-e>", { buffer = bufnr })
end

-- OR setup with some options
require("nvim-tree").setup({
  sort_by = "case_sensitive",
  on_attach = onAttach,
  renderer = {
    group_empty = true,
    icons = {
      git_placement = "after",
      glyphs = {
        git = {
          unstaged = "U",
          staged = "S",
          unmerged = ":",
          renamed = "→",
          untracked = "?",
          deleted = "D",
          ignored = "I",
        },
      },
    },
  },
  filters = {
    dotfiles = true,
  },
  view = {
    relativenumber = true,
  },
  actions = {
    change_dir = {
      restrict_above_cwd = true,
    },
  },
})

vim.keymap.set("n", "<leader>et", ":NvimTreeToggle<CR>")
