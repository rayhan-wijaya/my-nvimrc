require("mason").setup()

vim.keymap.set("n", "<leader>L", function () vim.cmd(":Mason") end)
