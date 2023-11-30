vim.g.mapleader = " "

vim.keymap.set("n", "<leader>S", function ()
    local filePath = vim.fn.expand("%")
    vim.cmd("so")

    print("Sourced ... " .. filePath)
end)

vim.keymap.set({"v", "n"}, "<leader>y", "\"*y")
vim.keymap.set({"v", "n"}, "<leader>p", "\"*p")
vim.keymap.set({"v", "n"}, "<leader>d", "\"_d")

vim.keymap.set("n", "<leader>fe", function ()
    vim.cmd("w!")

    local filePath = vim.fn.expand("%:p")
    local fileType = vim.bo.filetype

    local formatCommand = "! npx prettier --write"

    if string.match(filePath, "%.html%.mustache$") then
        formatCommand = formatCommand .. " --parser html"
    elseif fileType == "go" then
        formatCommand = "! go fmt"
    end

    local command = formatCommand .. " " .. filePath

    vim.cmd(command)
end)

vim.keymap.set("n", "<C-j>", function () vim.cmd("cn") end)
vim.keymap.set("n", "<C-k>", function () vim.cmd("cp") end)
vim.keymap.set("n", "<C-h>", function () vim.cmd("colder") end)
vim.keymap.set("n", "<C-l>", function () vim.cmd("cnewer") end)

vim.cmd(":let @t=\"ggO// @ts-checkoccgg\"")

vim.keymap.set("n", "!", ":!")
