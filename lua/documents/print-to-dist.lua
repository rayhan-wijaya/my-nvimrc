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

