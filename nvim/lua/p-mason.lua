require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = {
    'lua_ls',
    'gopls',
    'solargraph'
  },

  automatic_installation = true,
})
