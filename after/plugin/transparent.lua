require("transparent").setup({
  groups = {
    "Normal",
    "NonText",
    "SignColumn",
    "LineNr",
    "CursorLineNr",
  },
})

vim.keymap.set("n", "<leader>tt", function () vim.cmd(":TransparentToggle") end)
