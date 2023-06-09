-- local generateCompileLatexFile = function (outputToDist)
--   local compileLatexFile = function ()
--     local filePath = vim.fn.expand("%:p")
--     local command = string.format("!pdflatex %s", filePath)

--     if outputToDist then
--       local distDirectoryPath = string.gsub(filePath, "[^/\\]+$", "dist")
--       local outputDirectoryFlag = string.format("--output-directory %s", distDirectoryPath)

--       command = string.format("%s %s", command, outputDirectoryFlag)
--     end

--     vim.cmd(command)
--     print("Ran " .. command)
--   end

--   return compileLatexFile
-- end

-- vim.keymap.set("n", "<leader>ol", generateCompileLatexFile(false))
-- vim.keymap.set("n", "<leader>dl", generateCompileLatexFile(true))

