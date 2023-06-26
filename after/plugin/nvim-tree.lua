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
    root_folder_label = false,
    highlight_modified = "all",
    indent_width = 3,
    icons = {
      git_placement = "after",
      show = {
        folder = false,
      },
      glyphs = {
        folder = {
          arrow_closed = "",
          arrow_open = "",
        },
        git = {
          unstaged = "(U)",
          staged = "(S)",
          unmerged = "(UM)",
          renamed = "(R)",
          untracked = "(?)",
          deleted = "(D)",
          ignored = "(I)",
        },
      },
    },
  },
  filters = {
    dotfiles = true,
  },
  view = {
    relativenumber = true,
    side = "right",
  },
  actions = {
    change_dir = {
      restrict_above_cwd = true,
    },
  },
})

vim.keymap.set("n", "<leader>E", function () vim.cmd("NvimTreeToggle") end)
vim.keymap.set("n", "<leader>ef", function () vim.cmd(":NvimTreeFindFile") end)
vim.keymap.set("n", "<leader>ew", function () vim.cmd(":NvimTreeCollapse") end)
