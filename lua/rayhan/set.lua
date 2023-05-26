local operating_system = vim.loop.os_uname().sysname
local is_windows = operating_system == "Windows_NT"

vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.colorcolumn = "80"

local tabwidth = 2
vim.opt.tabstop = tabwidth
vim.opt.softtabstop = tabwidth
vim.opt.shiftwidth = tabwidth
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.hlsearch = false
vim.opt.incsearch = false

vim.opt.termguicolors = true

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undofile = true
vim.opt.undodir = os.getenv("UserProfile") .. "/.vim/undodir"

-- why was ruler even added in vim?
vim.opt.ruler = false
vim.opt.showmode = false
vim.opt.statusline = "%f %m %r"

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
