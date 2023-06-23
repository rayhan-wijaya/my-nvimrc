require("mason").setup()

vim.keymap.set("n", "<leader>m", function () vim.cmd(":Mason") end)
