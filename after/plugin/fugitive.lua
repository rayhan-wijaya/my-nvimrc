vim.keymap.set("n", "<leader>gss", vim.cmd.Git)

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

vim.keymap.set("n", "<leader>gr", function ()
  local filePath = vim.fn.expand("%");
  vim.cmd("G checkout " .. filePath)

  print("Checked out: " .. filePath)
end)

vim.keymap.set("n", "<leader>gfd", function ()
  local filePath = vim.fn.expand("%");
  vim.cmd("G diff " .. filePath)
end)

vim.keymap.set("n", "<leader>gpa", function ()
  local filePath = vim.fn.expand("%");
  vim.cmd("G add -p " .. filePath)
end)

vim.keymap.set("n", "<leader>gc", ":G commit<CR>")
vim.keymap.set("n", "<leader>gfc", ":G commit --amend<CR>")
vim.keymap.set("n", "<leader>gd", ":G diff<CR>")
vim.keymap.set("n", "<leader>gsd", ":G diff --staged<CR>")
vim.keymap.set("n", "<leader>gpus", ":G push<CR>")
vim.keymap.set("n", "<leader>gpul", ":G push<CR>")

