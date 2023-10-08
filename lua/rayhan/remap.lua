vim.g.mapleader = " "

vim.keymap.set("n", "<leader>S", function ()
    local filePath = vim.fn.expand("%")
    vim.cmd("so")

    print("Sourced ... " .. filePath)
end)

vim.keymap.set("n", "<leader>ds", function ()
    vim.cmd(":so")
    vim.cmd(":PackerSync")
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

vim.keymap.set("n", "<leader>E", ":Explore<CR>")
vim.keymap.set("n", "<leader>er", ":Explore .<CR>")
