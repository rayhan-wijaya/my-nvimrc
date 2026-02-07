return {
	"sbdchd/neoformat",
	config = function()
		vim.g.neoformat_enabled = 1

		vim.api.nvim_create_augroup("fmt", { clear = true })
		vim.api.nvim_create_autocmd("BufWritePre", {
			group = "fmt",
			pattern = "*",
			command = ":if g:neoformat_enabled == 1 | try | undojoin | Neoformat | catch /E790/ | Neoformat | endtry | endif",
		})
	end,
}
