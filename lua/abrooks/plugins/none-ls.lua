return {
  'nvimtools/none-ls.nvim',
  config = function()
    local null_ls = require 'null-ls'
    local augroup = vim.api.nvim_create_augroup('LspFormatting', {})

    local formatting = null_ls.builtins.formatting
    local diagnostics = null_ls.builtins.diagnostics

    local actions = null_ls.builtins.code_actions

    null_ls.setup {
      sources = {
        formatting.stylua,
        formatting.prettier,
        formatting.gofumpt,
        formatting.goimports,
      },
    }
  end,
}
