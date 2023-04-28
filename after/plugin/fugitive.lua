vim.keymap.set("n", "<leader>gs", vim.cmd.Git)

vim.keymap.set("n", "<leader>ga", function ()
  local filePath = vim.fn.expand("%");
  vim.cmd("G add " .. filePath)

  print("Added: " .. filePath)
end)

vim.keymap.set("n", "<leader>gu", function ()
  local filePath = vim.fn.expand("%");
  vim.cmd("G restore --staged " .. filePath)

  print("Removed: " .. filePath)
end)

vim.keymap.set("n", "<leader>gc", function ()
  vim.cmd("G commit")
end)
