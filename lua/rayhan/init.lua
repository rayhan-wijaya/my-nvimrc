require("rayhan.set")
require("rayhan.remap")
require("rayhan.lazy_init")

local timer = vim.loop.new_timer()

local function get_branch()
	local branch_result = vim.fn.system("git branch --show-current")
	local branch_name = string.sub(branch_result, 1, -2)

	if branch_name:match("fatal") then return "" end

	return branch_name
end

timer:start(0, 0, vim.schedule_wrap(function ()
	local branch_name = get_branch()
	local statusline = "%f %m %r"

	if branch_name ~= "" then
		statusline = string.format("%s -> %s", branch_name, statusline)
	end

	vim.opt.statusline = statusline
end))
