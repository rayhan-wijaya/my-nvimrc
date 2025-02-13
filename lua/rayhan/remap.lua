vim.g.mapleader = " "

vim.keymap.set("n", "<leader>S", function ()
	vim.cmd("so")
	print("Sourced ... " ..  vim.fn.expand("%"))
end)

vim.keymap.set({"v", "n"}, "<leader>y", "\"*y")
vim.keymap.set({"v", "n"}, "<leader>p", "\"*p")
vim.keymap.set({"v", "n"}, "<leader>d", "\"_d")

-- TODO: Refactor into a config file outside `my-nvimrc`
local formatters = {
	go = "! go fmt",
	python = "! black",

	-- depends on: github.com/rayhan-wijaya/prettierd-wrapper
	javascript = "! prettierd_wrapper",
	json = "! prettierd_wrapper",
	typescriptreact = "! prettierd_wrapper",
	astro = "! prettierd_wrapper",
	html = "! prettierd_wrapper",
	tsx = "! prettierd_wrapper",
	xml = "! xmllint --format"
}

vim.keymap.set("n", "<leader>fe", function ()
	vim.cmd("w!")

	if formatters[vim.bo.filetype] == nil then
		return print("No formatter for file ... " .. vim.fn.expand("%"))
	end

	vim.cmd(formatters[vim.bo.filetype] .. " " .. vim.fn.expand("%"))
end)

vim.keymap.set("n", "<C-j>", function () vim.cmd("cn") end)
vim.keymap.set("n", "<C-k>", function () vim.cmd("cp") end)
vim.keymap.set("n", "<C-h>", function () vim.cmd("colder") end)
vim.keymap.set("n", "<C-l>", function () vim.cmd("cnewer") end)

vim.keymap.set("n", "!", ":!")
