local lazy_path = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazy_path) then
	print("Cloning...")

	local output = vim.fn.system({
		"git",
		"clone",
		"https://github.com/folke/lazy.nvim.git",
		lazy_path,
	})

	if vim.v.shell_error ~= 0 then
		vim.api.nvim_echo({
			{ "Failed to clone lazy.nvim:\n", "ErrorMsg" },
			{ output, "WarningMsg" },
			{ "\nPress any key to exit..." },
		}, true, {})
		vim.fn.getchar()
		os.exit(1)
	end
end

vim.opt.rtp:prepend(lazy_path)

require("lazy").setup({
	spec = "rayhan.lazy",
	checker = { enabled = true },
})
