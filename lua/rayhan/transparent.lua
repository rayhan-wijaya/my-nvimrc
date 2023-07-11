local is_transparent = true
local old_guibg_value = nil

local function update_guibg()
  local new_guibg = is_transparent and "none" or old_guibg_value
  vim.cmd("highlight Normal guibg=" .. new_guibg)
end

vim.api.nvim_create_autocmd({ "BufEnter", "FileType" }, {
  callback = function ()
    local highlight_group = vim.api.nvim_exec("highlight Normal", true)
    local guibg_value = string.match(highlight_group, "guibg=(#(%S+))")

    if old_guibg_value == nil then
      old_guibg_value = guibg_value
    end

    update_guibg()
  end
})

vim.keymap.set("n", "<leader>te", function ()
  is_transparent = not is_transparent
  update_guibg()
end)
