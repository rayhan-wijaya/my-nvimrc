local builtin = require("telescope.builtin")
local themes = require("telescope.themes")

vim.keymap.set("n", "<C-p>", function ()
    builtin.find_files(themes.get_cursor({
        layout_config = {
            width = 90,
        },
    }))
end)
vim.keymap.set("n", "<leader>gfs", builtin.git_files)
vim.keymap.set("n", "<leader>ds", builtin.diagnostics)
vim.keymap.set("n", "<leader>gs", function ()
    builtin.grep_string(
        vim.tbl_deep_extend(
            "force",
            { search = vim.fn.input("Grep ... ") },
            themes.get_ivy()
        )
    )
end)
