return {
	"catgoose/nvim-colorizer.lua",
	event = "BufReadPre",
	config = function()
		require("colorizer").setup({
			user_default_options = {
				tailwind = true,
				tailwind_opts = {
					update_names = true,
				},
			},
			filetypes = {
				"*",
				cmp_menu = { always_update = true },
			},
		})
	end,
}
