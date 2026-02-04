return {
	"nvim-telescope/telescope.nvim", version = "*",
	dependencies = {
		"nvim-lua/plenary.nvim",
		-- optional but recommended
		{ "nvim-telescope/telescope-fzy-native.nvim", build = "make" },
	},
	config = function ()
		local telescope = require("telescope")
		local builtin = require("telescope.builtin")

		telescope.setup {
			extensions = {
				fzy_native = {
					override_generic_sorter = false,
					override_file_sorter = true,
				}
			}
		}
		telescope.load_extension("fzy_native")

		vim.keymap.set("n", "<leader>T", builtin.find_files)
		vim.keymap.set("n", "<leader>G", builtin.live_grep)
	end
}
