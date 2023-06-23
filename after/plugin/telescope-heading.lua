require('telescope').load_extension('heading')

vim.keymap.set("n", "<leader>fh", function () vim.cmd(":Telescope heading") end)
