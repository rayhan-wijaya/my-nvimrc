vim.g.mapleader = " "

vim.keymap.set({ "v", "n" }, "<leader>y", '"+y')
vim.keymap.set({ "v", "n" }, "<leader>p", '"+p')
vim.keymap.set({ "v", "n" }, "<leader>d", '"_d')

vim.keymap.set("n", "<Tab>", vim.cmd.tabn)
vim.keymap.set("n", "<A-v>", "_vg_")
-- vim.fn.setreg("e", "_vg_")
