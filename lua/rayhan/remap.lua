vim.g.mapleader = " "

vim.keymap.set({"v", "n"}, "<leader>y", "\"+y")
vim.keymap.set({"v", "n"}, "<leader>p", "\"+p")
vim.keymap.set({"v", "n"}, "<leader>d", "\"_d")

vim.keymap.set("n", "<C-Tab>", ":tabn")
vim.fn.setreg("e", "_vg_")
