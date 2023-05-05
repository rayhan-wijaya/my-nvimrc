vim.g.mapleader = " "
vim.keymap.set("n", "Q", "vapgq")

local generateCompileLatexFile = function (outputToDist)
  local compileLatexFile = function ()
    local filePath = vim.fn.expand("%:p")
    local command = string.format("!pdflatex %s", filePath)

    if outputToDist then
      local distDirectoryPath = string.gsub(filePath, "[^/\\]+$", "dist")
      local outputDirectoryFlag = string.format("--output-directory %s", distDirectoryPath)

      command = string.format("%s %s", command, outputDirectoryFlag)
    end

    vim.cmd(command)
    print("Ran " .. command)
  end

  return compileLatexFile
end

vim.keymap.set("n", "<leader>ol", generateCompileLatexFile(false))
vim.keymap.set("n", "<leader>dl", generateCompileLatexFile(true))

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

vim.keymap.set("n", "<leader>w", ":w<CR>")

vim.keymap.set("n", "<leader>t", function ()
  local command = vim.fn.input("Command > ")
  vim.cmd("te " .. command .. " &")
end)

vim.keymap.set("n", "<leader>bo", ":b ")
vim.keymap.set("n", "<leader>bd", ":bd!<CR>")
vim.keymap.set("n", "<leader>bl", ":buffers<CR>")
vim.keymap.set("n", "<leader>fo", ":e ")
vim.keymap.set("n", "<leader>dp", ":! npx prisma db push<CR>")

