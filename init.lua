-- Packer
require('plugins')
require('settings')
require('settings.color')
require('settings.font')
require('settings.completion')
require('settings.filetype')
-- LSP Config
require('lsp')
-- Dap Config
--require('dap')
-- Keymap
require('settings.keymap')
--utils
--require('utils')
vim.cmd([[ autocmd ColorScheme * :lua require('vim.lsp.diagnostics')._define_default_signs_and_highlights() ]])
vim.cmd([[ autocmd ColorScheme * runtime lsp/diagnostic.vim]])
