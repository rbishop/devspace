--local lsp = require('lspconfig')
local capabilities = require('cmp_nvim_lsp').default_capabilities()

vim.lsp.config('gopls', {
  capabilities = capabilities,
})

vim.lsp.enable('gopls')
