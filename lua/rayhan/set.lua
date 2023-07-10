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

local function get_branch()
  local branch = string.sub(vim.fn.system("git rev-parse --abbrev-ref HEAD"), 1, -2)

  if branch:match("fatal") then
    return ""
  end

  return branch
end

local statusline = ""
statusline = statusline .. get_branch() ~= "" and (get_branch() .. " => ") or ""
statusline = statusline .. "%f"
statusline = statusline .. " %m"
statusline = statusline .. " %r"

vim.opt.statusline = statusline

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

vim.opt.fillchars = "eob: "
vim.opt.scl = "no"

vim.opt.shortmess = "filnxtToFW"

vim.g.netrw_banner = 0
vim.g.netrw_bufsettings = "nu rnu nowrap"
vim.g.netrw_list_hide = "^\\./$"

local is_transparent = true
local old_guibg_value = nil

local function update_guibg()
  local new_guibg = is_transparent and "none" or old_guibg_value
  vim.cmd("highlight Normal guibg=" .. new_guibg)
end

vim.api.nvim_create_autocmd({ "BufEnter", "FileType" }, {
  callback = function ()
    local highlight_group = vim.api.nvim_exec("highlight Normal", true)
    local guibg_value = string.match(highlight_group, "guibg=(#(%S+))")

    if old_guibg_value == nil then
      old_guibg_value = guibg_value
    end

    update_guibg()
  end
})

vim.keymap.set("n", "<leader>tt", function ()
  is_transparent = not is_transparent
  update_guibg()
end)
