local data_dir_path = vim.fn.stdpath("data")
local transparent_file_path = string.format("%s/transparent", data_dir_path)

local function get_is_transparent()
  local transparent_file = io.open(transparent_file_path, "r")

  if transparent_file == nil then
    return nil
  end

  local is_transparent = transparent_file:read() == "true" and true or false
  transparent_file:close()

  return is_transparent
end

local is_transparent = get_is_transparent() or false
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

vim.api.nvim_create_autocmd({ "VimLeave", "BufLeave" }, {
  callback = function ()
    local transparent_file = io.open(transparent_file_path, "w+")

    if transparent_file == nil then
      return
    end

    transparent_file:write(is_transparent and "true" or "false")
    transparent_file:close()
  end
})

vim.keymap.set("n", "<leader>te", function ()
  is_transparent = not is_transparent
  update_guibg()
end)
