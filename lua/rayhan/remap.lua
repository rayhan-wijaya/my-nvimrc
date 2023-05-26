vim.g.mapleader = " "
vim.keymap.set("n", "Q", "gqip")

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

vim.keymap.set("n", "<leader>w", ":w!<CR>")

vim.keymap.set("n", "<leader>t", function ()
  local command = vim.fn.input("Command > ")
  vim.cmd("te " .. command .. " &")
end)

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

vim.keymap.set("n", "<leader>y", "\"*y")
vim.keymap.set("n", "<leader>d", "\"_d")

vim.keymap.set("n", "<leader>dpo", function ()
  local filePath = vim.fn.expand("%:p")

  local fileExtensionRegex = "%.([^%.]+)$"
  local fileExtension = string.sub(
    filePath,
    string.find(filePath, fileExtensionRegex)
  )

  if fileExtension ~= ".tex" then
    return
  end

  local fileName = string.match(filePath, ".+[\\/](.-)%.%w+$")
  local directoryPath = string.match(filePath, "^(.*\\)[^\\]+$")

  local command = string.format("!mupdf %sdist\\%s.pdf", directoryPath, fileName)
  vim.cmd(command)
end)

vim.keymap.set("n", "<leader>dprint", function ()
  local filePath = vim.fn.expand("%:p")

  local fileExtensionRegex = "%.([^%.]+)$"
  local fileExtension = string.sub(
    filePath,
    string.find(filePath, fileExtensionRegex)
  )

  if fileExtension ~= ".tex" then
    return
  end

  local fileName = string.match(filePath, ".+[\\/](.-)%.%w+$")
  local directoryPath = string.match(filePath, "^(.*\\)[^\\]+$")

  local command = string.format("!pdftoprinter %sdist\\%s.pdf", directoryPath, fileName)
  vim.cmd(command)
end)

vim.keymap.set("n", "<leader>ff", function ()
  -- i'm sorry okay, i sometimes forget to save

  local hasChanged = vim.fn.getbufinfo('%')[1].changed

  if hasChanged then
    vim.cmd("w!")
  end

  local filePath = vim.fn.expand("%:p")
  vim.cmd("! npx prettier --write " .. filePath)
end)

