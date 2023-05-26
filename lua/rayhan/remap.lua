vim.g.mapleader = " "
vim.keymap.set("n", "Q", "gqip")

vim.keymap.set("n", "<leader>pb", function ()
  vim.cmd("!npm run build")
end)

vim.keymap.set("n", "<leader>s", function ()
  local filePath = vim.fn.expand("%")

  vim.cmd("so")
  print("Sourced " .. filePath)
end)

vim.keymap.set("n", "<leader>ds", ":PackerSync<CR>")
vim.keymap.set("n", "<leader>q", function ()
  vim.cmd(":%bd!")
  vim.cmd(":wqa")
end)

vim.keymap.set("n", "<leader>w", ":w!<CR>")

vim.keymap.set("n", "<leader>bo", ":b ")
vim.keymap.set("n", "<leader>bd", ":bd!<CR>")
vim.keymap.set("n", "<leader>bl", ":buffers<CR>")
vim.keymap.set("n", "<leader>fo", ":e ")
vim.keymap.set("n", "<leader>dp", function ()
  local filePath = vim.fn.expand("%")

  local fileExtensionRegex = "%.([^%.]+)$"
  local fileExtension = string.sub(
    filePath,
    string.find(filePath, fileExtensionRegex)
  )

  if fileExtension == ".prisma"  then
    vim.cmd("! npx prisma db push --schema=" .. filePath)
    return
  end
end)

vim.keymap.set("n", "<leader>d", "\"_d")

vim.keymap.set("n", "<leader>ff", function ()
  -- i'm sorry okay, i sometimes forget to save

  local hasChanged = vim.fn.getbufinfo('%')[1].changed

  if hasChanged then
    vim.cmd("w!")
  end

  local filePath = vim.fn.expand("%:p")
  vim.cmd("! npx prettier --write " .. filePath)
end)

