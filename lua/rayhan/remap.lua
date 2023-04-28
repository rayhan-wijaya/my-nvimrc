vim.g.mapleader = " "
vim.keymap.set("n", "<leader>e", vim.cmd.Ex)
vim.keymap.set("n", "Q", "vapgq")

local generateCompileLatexFile = function (outputToDist)
  local compileLatexFile = function ()
    local filePath = vim.fn.expand("%")
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

vim.keymap.set("n", "<leader>ul", generateCompileLatexFile(false))
vim.keymap.set("n", "<leader>dl", generateCompileLatexFile(true))

local viewPDFFile = function ()
  local filePath = vim.fn.expand("%")
  local command = ":! mupdf " .. filePath

  vim.cmd(command)
end

vim.keymap.set("n", "<leader>p", viewPDFFile)

vim.keymap.set("n", "<leader>b", function ()
  vim.cmd("!npm run build")
end)

vim.keymap.set("n", "<leader>s", function ()
  vim.cmd("so")
  print("Sourced")
end)
