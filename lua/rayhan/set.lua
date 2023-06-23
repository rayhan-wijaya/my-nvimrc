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

local home = is_windows and "UserProfile" or "HOME"
vim.opt.undodir = os.getenv(home) .. "/.vim/undodir"

-- why was ruler even added in vim?
vim.opt.ruler = false
vim.opt.showcmd = false
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

vim.opt.mouse = nil
vim.opt.guicursor = "i:block"

vim.api.nvim_create_autocmd("BufEnter", {
  callback = function ()
    vim.wo.fillchars='eob: '
  end
})
