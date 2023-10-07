local builtin = require('telescope.builtin')

vim.keymap.set("n", "<C-p>", builtin.find_files)
vim.keymap.set("n", "<leader>gfs", builtin.git_files)
vim.keymap.set("n", "<leader>ds", builtin.diagnostics)
vim.keymap.set("n", "<leader>gs", function ()
    builtin.grep_string({ search = vim.fn.input("Grep ... ") })
end)
