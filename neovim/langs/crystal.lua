-- local lsp = require('lspconfig')
local capabilities = require('cmp_nvim_lsp').default_capabilities()

require('conform').setup {
  formatters_by_ft = {
    crystal    = { 'crystal' },
  },
  formatters = {
    crystal = {
      command = "crystal",
      args = { "tool", "format", "$FILENAME" },
      stdin = false,
    },
  },
  format_on_save = {
    timeout_ms = 500,
    lsp_fallback = false,
  },
}

vim.lsp.config('crystalline', {
  capabilities = capabilities,
})

vim.lsp.enable('crystalline')
