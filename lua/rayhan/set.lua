vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.colorcolumn = "80"

local tabwidth = 4
vim.opt.tabstop = tabwidth
vim.opt.softtabstop = tabwidth
vim.opt.shiftwidth = tabwidth

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

vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"

vim.cmd("set nocompatible")
vim.cmd("set path=**")
vim.cmd("set wildmenu")

vim.cmd([[
	highlight Normal guibg=none
	highlight NonText guibg=none
	highlight Normal ctermbg=none
	highlight NonText ctermbg=none
]])
