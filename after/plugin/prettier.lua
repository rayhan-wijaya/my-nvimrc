local prettier = require("prettier")

prettier.setup({
  bin = 'prettier', -- or `'prettierd'` (v0.23.3+)
  filetypes = {
    "css",
    "graphql",
    "html",
    "javascript",
    "javascriptreact",
    "json",
    "less",
    "markdown",
    "scss",
    "typescript",
    "typescriptreact",
    "yaml",
    "astro",
    "lua"
  },
  cli_options = {
      arrow_parens = "always",
      bracket_spacing = true,
      tab_width = 2,
      use_tabs = false,
      print_width = 80,
      semi = true,
      single_quote = false,
  },
})

local generatePrettierFormat = function (checkForPrismaFiles)
  return function ()
    local filePath = vim.fn.expand("%")

    local fileExtensionRegex = "%.([^%.]+)$"
    local fileExtension = string.sub(
      filePath,
      string.find(filePath, fileExtensionRegex)
    )

    if checkForPrismaFiles and fileExtension == ".prisma" then
      vim.cmd(":! npx prisma format --schema=" .. filePath)
      -- :!npx prisma format --schema=packages/db/prisma/schema.prisma
      --
      return
    end

    vim.cmd(":Prettier")
  end
end

vim.keymap.set("n", "<leader>f", generatePrettierFormat(true))
vim.api.nvim_create_autocmd("BufWritePre", { callback = generatePrettierFormat(false) })
