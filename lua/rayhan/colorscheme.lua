local color_line_numbers = function ()
  local number_color = "#5C6780"

  vim.api.nvim_create_autocmd("BufEnter", {
    callback = function ()
      vim.api.nvim_set_hl(0, 'LineNrAbove', { fg=number_color, bold=true })
      vim.api.nvim_set_hl(0, 'LineNr', { fg=number_color, bold=true })
      vim.api.nvim_set_hl(0, 'LineNrBelow', { fg=number_color, bold=true })
    end
  })
end

vim.cmd.colorscheme("apprentice")
color_line_numbers()
