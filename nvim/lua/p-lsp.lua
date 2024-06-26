local opts = { noremap = true, silent = true }
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)

local on_attach = function(_, bufnr)
  local bufopts = { noremap = true, silent = true, buffer = bufnr }
  vim.keymap.set('n', 'gd', '<cmd>Telescope lsp_definitions<cr>', bufopts)
  vim.keymap.set('n', '<leader>k', vim.lsp.buf.hover, bufopts)
  vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
  vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, bufopts)
  vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, bufopts)
  vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, bufopts)
  vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)
  vim.keymap.set('n', '<leader>d', '<cmd>Telescope lsp_document_symbols<cr>', bufopts)

  -- format on save
  vim.api.nvim_create_augroup('LspFormatting', { clear = true })
  vim.api.nvim_create_autocmd('BufWritePre', {
    group = 'LspFormatting',
    buffer = bufnr,
    callback = function()
      vim.lsp.buf.format({ bufnr = bufnr })
    end,
  })
end

local capabilities = require('cmp_nvim_lsp').default_capabilities()
local lsp_config = {
  capabilities = capabilities,
  on_attach = on_attach,
}

require('mason-lspconfig').setup_handlers({
  function(server_name)
    require('lspconfig')[server_name].setup(lsp_config)
  end,
  ['lua_ls'] = function()
    require('lspconfig').lua_ls.setup(vim.tbl_extend('force', lsp_config, {
      settings = {
        Lua = {
          diagnostics = {
            globals = { 'vim' }
          }
        }
      }
    }))
  end,
  ['solargraph'] = function()
    require('lspconfig').solargraph.setup(vim.tbl_extend('force', lsp_config, {
      settings = {
        solargraph = {
          diagnostics = true,
          completion = true,
          formatting = true,
        }
      }
    }))
  end,
  ['gopls'] = function()
    require('lspconfig').gopls.setup(vim.tbl_extend('force', lsp_config, {
      settings = {
        gopls = {
          analyses = {
            unusedparams = true,
          },
          staticcheck = true,
        }
      }
    }))
  end,
})
