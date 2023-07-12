local function get_branch()
    local branch_result = vim.fn.system("git rev-parse --abbrev-ref HEAD")
    local branch_name = string.sub(branch_result, 1, -2)

    if branch_name:match("fatal") then
        return ""
    end

    return branch_name
end

local statusline = ""
statusline = statusline .. get_branch() ~= "" and (get_branch() .. " ->") or ""
statusline = statusline .. " %f"
statusline = statusline .. " %m"
statusline = statusline .. " %r"

vim.opt.statusline = statusline
