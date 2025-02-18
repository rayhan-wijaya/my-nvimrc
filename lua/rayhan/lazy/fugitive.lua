return {
	"tpope/vim-fugitive",
	config = function ()
		vim.keymap.set("n", "<leader>F", vim.cmd.Git)
		vim.keymap.set("n", "<leader>gr", vim.cmd.Gread)
	end,
}
