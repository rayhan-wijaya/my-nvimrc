vim.g.mapleader = " "
vim.keymap.set("n", "Q", "gqip")

vim.keymap.set("n", "<leader>s", function ()
    local filePath = vim.fn.expand("%")

    vim.cmd("so")
    print("Sourced ... " .. filePath)
end)

vim.keymap.set("n", "<leader>ds", function ()
    vim.cmd(":so")
    vim.cmd(":PackerSync")
end)

vim.keymap.set("n", "<leader>Q", function ()
    vim.cmd(":%bd!")
    vim.cmd(":wqa")
end)

vim.keymap.set("n", "<leader>bo", ":b ")
vim.keymap.set("n", "<leader>fo", ":e ")

vim.keymap.set({"v", "n"}, "<leader>y", "\"*y")
vim.keymap.set({"v", "n"}, "<leader>P", "\"*p")
vim.keymap.set({"v", "n"}, "<leader>d", "\"_d")

vim.keymap.set("n", "<leader>ff", function ()
    -- i'm sorry okay, i sometimes forget to save

    vim.cmd("w!")

    local filePath = vim.fn.expand("%:p")
    local command = "! npx prettier --write " .. filePath

    vim.cmd(command)
end)

vim.keymap.set("n", "<leader>T", function ()
    local parsers = vim.fn.input("Parsers ... ")
    vim.cmd("TSInstall " .. parsers)
end)

vim.keymap.set("n", "<leader>E", function ()
    vim.cmd("Explore")
end)

vim.keymap.set("n", "<leader>er", function ()
    vim.cmd("Explore .")
end)
