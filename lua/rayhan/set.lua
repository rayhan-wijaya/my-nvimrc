vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.colorcolumn = "80"

local tabwidth = 4
vim.opt.tabstop = tabwidth
vim.opt.softtabstop = tabwidth
vim.opt.shiftwidth = tabwidth
vim.opt.expandtab = true

vim.api.nvim_create_autocmd("FileType", {
    pattern = "go",
    command = "setlocal noexpandtab",
})

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.hlsearch = false
vim.opt.incsearch = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undofile = true

vim.opt.mouse = nil
vim.opt.guicursor = "i:block"

vim.opt.fillchars = "eob: "
vim.opt.scl = "no"

vim.opt.shortmess = "filnxtToFW"

vim.g.netrw_banner = 0
vim.g.netrw_bufsettings = "nu rnu nowrap"
vim.g.netrw_list_hide = "^\\./$,^\\.\\./$"

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.ruler = false
vim.opt.showcmd = false

local operating_system = vim.loop.os_uname().sysname
local is_windows = operating_system == "Windows_NT"

local home = is_windows and "UserProfile" or "HOME"
vim.opt.undodir = os.getenv(home) .. "/.vim/undodir"

if is_windows then
    vim.opt.shell = "powershell.exe"
    vim.opt.shellxquote = nil

    vim.cmd([[
        let &shellcmdflag = '-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command '
        let &shellquote   = ''
        let &shellpipe    = '| Out-File -Encoding UTF8 %s'
        let &shellredir   = '| Out-File -Encoding UTF8 %s'
    ]])
end

vim.opt.clipboard = "unnamedplus"

vim.cmd("set nocompatible")
vim.cmd("set path=**")
vim.cmd("set wildmenu")
