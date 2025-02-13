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

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.ruler = false
vim.opt.showcmd = false

vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"

vim.opt.compatible = false
vim.opt.path = "**"
vim.opt.wildmenu = true

vim.cmd([[
	highlight Normal guibg=none
	highlight NonText guibg=none
	highlight Normal ctermbg=none
	highlight NonText ctermbg=none
]])
