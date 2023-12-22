vim.g.mapleader = " "

vim.keymap.set("n", "<leader>S", function ()
    vim.cmd("so")
    print("Sourced ... " ..  vim.fn.expand("%"))
end)

vim.keymap.set({"v", "n"}, "<leader>y", "\"*y")
vim.keymap.set({"v", "n"}, "<leader>p", "\"*p")
vim.keymap.set({"v", "n"}, "<leader>d", "\"_d")

local formatters = {
    go = "! go fmt",
    python = "! black",

    javascript = "! prettierd_wrapper",
    typescript = "! prettierd_wrapper",
    html = "! prettierd_wrapper"
}

vim.keymap.set("n", "<leader>fe", function ()
    vim.cmd("w!")

    if formatters[vim.bo.filetype] == nil then
        return print("No formatter for file ... " .. vim.fn.expand("%"))
    end

    vim.cmd(formatters[vim.bo.filetype] .. " " .. vim.fn.expand("%"))
end)

vim.keymap.set("n", "<C-j>", function () vim.cmd("cn") end)
vim.keymap.set("n", "<C-k>", function () vim.cmd("cp") end)
vim.keymap.set("n", "<C-h>", function () vim.cmd("colder") end)
vim.keymap.set("n", "<C-l>", function () vim.cmd("cnewer") end)

vim.cmd(":let @t=\"ggO// @ts-checkoccgg\"")

vim.keymap.set("n", "!", ":!")
