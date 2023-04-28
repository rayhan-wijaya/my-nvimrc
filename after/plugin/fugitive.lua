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

vim.keymap.set("n", "<leader>gd", function ()
  vim.cmd("G diff")
end)

vim.keymap.set("n", "<leader>gsd", function ()
  vim.cmd("G diff --staged")
end)

vim.keymap.set("n", "<leader>gp", function ()
  vim.cmd("G push")
end)

