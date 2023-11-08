vim.g.mapleader = " "

vim.keymap.set("n", "<leader>S", function ()
    local filePath = vim.fn.expand("%")
    vim.cmd("so")

    print("Sourced ... " .. filePath)
end)

vim.keymap.set({"v", "n"}, "<leader>y", "\"*y")
vim.keymap.set({"v", "n"}, "<leader>p", "\"*p")
vim.keymap.set({"v", "n"}, "<leader>d", "\"_d")

-- i'm sorry okay, i sometimes forget to save
vim.keymap.set("n", "<leader>fe", function ()
    vim.cmd("w!")

    local filePath = vim.fn.expand("%:p")
    local fileType = vim.bo.filetype

    local formatCommand = "! npx prettier --write"

    if string.match(filePath, "%.html%.mustache$") then
        formatCommand = formatCommand .. " --parser html"
    end

    if fileType == "go" then
        formatCommand = "! go fmt"
    end

    local command = formatCommand .. " " .. filePath

    vim.cmd(command)
end)

vim.keymap.set("n", "<leader>T", function ()
    local parsers = vim.fn.input("Parsers ... ")
    vim.cmd("TSInstall " .. parsers)
end)

vim.keymap.set("n", "<leader>E", function () vim.cmd("Explore") end)
vim.keymap.set("n", "<leader>er", function () vim.cmd("Explore .") end)

vim.keymap.set("n", "<C-j>", function () vim.cmd("cn") end)
vim.keymap.set("n", "<C-k>", function () vim.cmd("cp") end)
vim.keymap.set("n", "<C-h>", function () vim.cmd("colder") end)
vim.keymap.set("n", "<C-l>", function () vim.cmd("cnewer") end)

vim.cmd(":let @t=\"ggO// @ts-checkoccgg\"")
