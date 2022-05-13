--Rust tool
require('rust-tools').setup({})
require('rust-tools.inlay_hints').set_inlay_hints()

--Clangd "clangd_extensions"
-- require("clangd_extensions").setup()

local lsp = require('lsp-zero')
lsp.preset('recommended')
lsp.nvim_workspace()
lsp.setup()


local nvim_lsp = require('lspconfig')
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

-- Diagnostics symbols for display in the sign column.
local signs = { Error = "", Warn = "", Hint = "", Info = "" }
for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end
vim.cmd('setlocal omnifunc=v:lua.vim.lsp.omnifunc')

vim.diagnostic.config {
      virtual_text = {
         prefix = '●', -- Could be '●', '▎', 'x'
      },
      signs = true,
      underline = true,
      update_in_insert = true,
   }


-- vim.cmd([[ autocmd ColorScheme * :lua require('vim.lsp.diagnostic')._define_default_signs_and_highlights() ]])

--[=[
local nvim_lsp = require('lspconfig')
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

-- Diagnostics symbols for display in the sign column.
local signs = { Error = "", Warn = "", Hint = "", Info = "" }
for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end
vim.cmd('setlocal omnifunc=v:lua.vim.lsp.omnifunc')

require'lspconfig'.html.setup {
  filetypes = {"html", "eruby"},
  capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
}
require'lspconfig'.tsserver.setup{
  capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
}
require'lspconfig'.solargraph.setup{
  capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
}
require'lspconfig'.cssls.setup{
  capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
}
require'lspconfig'.dockerls.setup{
  capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
}
require'lspconfig'.jsonls.setup{
  commands = {
    Format = {
      function()
        vim.lsp.buf.range_formatting({},{0,0},{vim.fn.line("$"),0})
      end
    }
  },
  capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
}
require'lspconfig'.yamlls.setup{
  capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
}
require'lspconfig'.vimls.setup{
  capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
}
require'lspconfig'.dartls.setup{
  capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
}
require'lspconfig'.rust_analyzer.setup {
  on_attach = on_attach,
  settings = {
    ["rust-analyzer"] = {
      assist = {
        importMergeBehavior = "last",
        importPrefix = "by_self",
      },
      diagnostics = {
        disabled = { "unresolved-import" }
      },
      cargo = {
        loadOutDirsFromCheck = true
      },
      procMacro = {
        enable = true
      },
      checkOnSave = {
        command = "clippy"
      },
    }
  },
  capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
}
]=]

require("nvim-lsp-installer").setup({
    ensure_installed = { "rust_analyzer", "sumneko_lua",}, -- ensure these servers are always installed
    automatic_installation = true, -- automatically detect which servers to install (based on which servers are set up via lspconfig)
    ui = {
        icons = {
            server_installed = "✓",
            server_pending = "➜",
            server_uninstalled = "✗"
        }
    }
}
)
