vim.cmd.colorscheme("nord")

local number_color = "#ffffff"
local relative_number_color = "#5C6780"

vim.api.nvim_set_hl(0, 'LineNrAbove', { fg=relative_number_color, bold=true })
vim.api.nvim_set_hl(0, 'LineNr', { fg=number_color, bold=true })
vim.api.nvim_set_hl(0, 'LineNrBelow', { fg=relative_number_color, bold=true })
