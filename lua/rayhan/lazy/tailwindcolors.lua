return {
	"themaxmarchuk/tailwindcss-colors.nvim",
	-- load only on require("tailwindcss-colors")
	module = "tailwindcss-colors",
	-- run the setup function after plugin is loaded
	config = function()
		-- pass config options here (or nothing to use defaults)
		require("tailwindcss-colors").setup()

		local on_attach = function(_, bufnr)
			-- other stuff --
			require("tailwindcss-colors").buf_attach(bufnr)
		end

		require("lspconfig").tailwindcss.setup({
			on_attach = on_attach,
			-- other settings...
		})
	end,
}
