-- vim.cmd([[ autocmd ColorScheme * :lua require('vim.lsp.diagnostic')._define_default_signs_and_highlights() ]])

if vim.fn.has("termguicolors") == 1 then
  vim.go.t_8f = "[[38;2;%lu;%lu;%lum"
  vim.go.t_8b = "[[48;2;%lu;%lu;%lum"
  vim.opt.termguicolors = false
end
vim.g.gruvbox_material_background = "medium" -- hard, soft, medium
vim.g.gruvbox_material_palette = "mix" -- original, mix, material
vim.g.gruvbox_material_enable_italic = 1
vim.g.gruvbox_material_sign_column_background = 'none'
-- vim.cmd 'color gruvbox-material'
vim.opt.termguicolors = true

vim.opt.background = "dark" -- or "light" for light mode
-- vim.cmd([[colorscheme gruvbox]])

-- vim.g.tokyonight_style = "night"
-- vim.cmd[[colorscheme tokyonight]]
vim.cmd[[colorscheme gruvbox-material]]

-- require('lsp.diagnostic')
-- require('plugins/lsp-colors')
-- require('vim.lsp.diagnostic')._define_default_signs_and_highlights()
-- vim.cmd([[ autocmd ColorScheme * :lua require('vim.lsp.diagnostic')._define_default_signs_and_highlights() ]])

