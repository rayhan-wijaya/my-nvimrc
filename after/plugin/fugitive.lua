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

vim.keymap.set("n", "<leader>gc", ":G commit<CR>")
vim.keymap.set("n", "<leader>gd", ":G diff<CR>")
vim.keymap.set("n", "<leader>gsd", ":G diff --staged<CR>")
vim.keymap.set("n", "<leader>gp", ":G push<CR>")

