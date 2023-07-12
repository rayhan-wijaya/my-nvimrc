local function get_branch()
    local branch = string.sub(vim.fn.system("git rev-parse --abbrev-ref HEAD"), 1, -2)

    if branch:match("fatal") then
        return ""
    end

    return branch
end

local statusline = ""
statusline = statusline .. get_branch() ~= "" and (get_branch() .. " -> ") or ""
statusline = statusline .. "%f"
statusline = statusline .. " %m"
statusline = statusline .. " %r"

vim.opt.statusline = statusline
