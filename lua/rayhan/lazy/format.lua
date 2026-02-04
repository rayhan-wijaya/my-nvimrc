return {
	"sbdchd/neoformat",
	config = function()
		vim.api.nvim_create_augroup("fmt", { clear = true })
		vim.api.nvim_create_autocmd("BufWritePre", {
			group = "fmt",
			pattern = "*",
			command = "try | undojoin | Neoformat | catch /E790/ | Neoformat | endtry",
		})
	end,
}
