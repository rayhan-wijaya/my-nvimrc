local telescope = require("telescope")

telescope.setup({
    extensions = {
        ["ui-select"] = {
            require("telescope.themes").get_cursor(),
        },
    },
})

telescope.load_extension("ui-select")

local builtin = require("telescope.builtin")
local themes = require("telescope.themes")

local dropdown_theme = themes.get_dropdown({ previewer = false })

vim.keymap.set("n", "<C-p>", function ()
    builtin.find_files(themes.get_cursor({
        previewer = false,
        layout_config = {
            width = 65,
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
            themes.get_dropdown({ previewer = false })
        )
    )
end)
