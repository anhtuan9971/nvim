-- <F1> help
-- <F2> vim-codepainter
--<F3> vim-codepainter navigate
--tab
vim.api.nvim_set_keymap('n', '<leader>s', ':e ~/.config/nvim/keymaps.txt<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<tab>', ':BufferNext<CR>', {noremap = true,silent = true})


vim.api.nvim_set_keymap('n', '<F4>', ':set number! relativenumber!<CR>', { noremap = true, silent = false })
vim.api.nvim_set_keymap('n', '<F5>', ':set list! list?<CR>', { noremap = false, silent = false })
-- vim.api.nvim_set_keymap('n', '<F6>', '<CMD>lua require("FTerm").toggle()<CR>', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('t', '<F6>', '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<space>e', ':NvimTreeToggle<CR>', { noremap = false, silent = true })
vim.api.nvim_set_keymap('n', '<F8>', ':MinimapToggle<CR>', { noremap = false, silent = true })
vim.api.nvim_set_keymap('n', '<leader>nm', ':Dispatch npm start<CR>', { noremap = false, silent = false })

-- Commment
vim.api.nvim_set_keymap('n', '<space>/', ':lua require("Comment.api").toggle_current_linewise()<CR>")', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<space>/', ':lua require("Comment.api").toggle_linewise_op(vim.fn.visualmode())<CR>")', { noremap = true, silent = true })

-- Buffers
vim.api.nvim_set_keymap('n', '<leader>bda', ':BufferCloseAllButCurrent<CR>', { noremap = false, silent = false })
vim.api.nvim_set_keymap('n', '<leader>bn', ':BufferNext<CR>', { noremap = false, silent = false })
vim.api.nvim_set_keymap('n', '<leader>bp', ':BufferPrevious<CR>', { noremap = false, silent = false })
-- Git
vim.api.nvim_set_keymap('n', '<leader>gf', ':20G<CR>', { noremap = false, silent = false })
vim.api.nvim_set_keymap('n', '<leader>gg', ':LazyGit<CR>', { noremap = false, silent = false })
-- Ctrlsf
vim.api.nvim_set_keymap('n', '<C-F>f', '<Plug>CtrlSFPrompt', { noremap = false, silent = false })
vim.api.nvim_set_keymap('v', '<C-F>f', '<Plug>CtrlSFVwordExec', { noremap = false, silent = false })
vim.api.nvim_set_keymap('n', '<C-F>n', '<Plug>CtrlSFCwordExec', { noremap = false, silent = false })
vim.api.nvim_set_keymap('n', '<C-F>t', ':CtrlSFToggle<CR>', { noremap = true, silent = false })
-- Easy-align
vim.api.nvim_set_keymap('x', 'ga', '<Plug>(EasyAlign)', { noremap = false, silent = false })
vim.api.nvim_set_keymap('n', 'ga', '<Plug>(EasyAlign)', { noremap = false, silent = false })
-- Lightspeed
vim.api.nvim_set_keymap('n', 'f', '<Plug>Lightspeed_f', { noremap = false, silent = false })
vim.api.nvim_set_keymap('n', 'F', '<Plug>Lightspeed_F', { noremap = false, silent = false })
vim.api.nvim_set_keymap('n', 't', '<Plug>Lightspeed_t', { noremap = false, silent = false })
vim.api.nvim_set_keymap('n', 'T', '<Plug>Lightspeed_T', { noremap = false, silent = false })
-- LSP
vim.api.nvim_set_keymap('n', '<space>g', ':lua vim.diagnostic.open_float()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<space>,', ':lua vim.lsp.diagnostic.goto_prev()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<space>;', ':lua vim.lsp.diagnostic.goto_next()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<space>a', ':lua vim.lsp.diagnostic.code_action()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<space>aa',':lua vim.lsp.buf.code_action()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<space>d', ':lua vim.lsp.buf.definition()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<space>f', ':lua vim.lsp.buf.formatting()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<space>h', ':lua vim.lsp.buf.hover()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<space>m', ':lua vim.lsp.buf.rename()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<space>r', ':lua vim.lsp.buf.references()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<space>s', ':lua vim.lsp.buf.document_symbol()<CR>', { noremap = true, silent = true })
-- Telescope
vim.api.nvim_set_keymap('n', '<leader>r', ":lua require('telescope.builtin').live_grep()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>#', ":lua require('telescope.builtin').grep_string()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>bb', ":lua require('telescope.builtin').buffers()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>h', ":lua require('harpoon.mark').add_file()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>m', ":Telescope harpoon marks<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>mm', ":lua require('harpoon.ui').toggle_quick_menu()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>t', ":lua require('telescope.builtin').treesitter()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>l', ":lua require('telescope.builtin').current_buffer_fuzzy_find()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>f', ":lua require('plugins.telescope').project_files()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>p', ":Telescope repo list<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>c', ":lua require('plugins.telescope').my_git_commits()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>g', ":lua require('plugins.telescope').my_git_status()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>b', ":lua require('plugins.telescope').my_git_bcommits()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>n', ":lua require('plugins.telescope').my_note()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>nn', ":e ~/Note/", { noremap = true, silent = false })
vim.api.nvim_set_keymap('n', '<leader>gc', ':Octo issue create<CR>', { noremap = true, silent = false })
vim.api.nvim_set_keymap('n', '<leader>i', ':Octo issue list<CR>', { noremap = true, silent = false })
vim.api.nvim_set_keymap('n', '<leader>y', ':Telescope neoclip<CR>', { noremap = true, silent = false })
vim.api.nvim_set_keymap('n', '<leader>ll', ":lua require('telescope.builtin').grep_string({ search = vim.fn.input('GREP -> ') })<CR>", { noremap = true, silent = true })
-- HlsLens
vim.api.nvim_set_keymap('n', 'n', "<Cmd>execute('normal! ' . v:count1 . 'n')<CR><Cmd>lua require('hlslens').start()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'N', "<Cmd>execute('normal! ' . v:count1 . 'N')<CR><Cmd>lua require('hlslens').start()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '*', "*<Cmd>lua require('hlslens').start()<CR>", { noremap = true })
vim.api.nvim_set_keymap('n', '#', "#<Cmd>lua require('hlslens').start()<CR>", { noremap = true })
vim.api.nvim_set_keymap('n', 'g*', "g*<Cmd>lua require('hlslens').start()<CR>", { noremap = true })
vim.api.nvim_set_keymap('n', 'g#', "g#<Cmd>lua require('hlslens').start()<CR>", { noremap = true })
-- Todo-comments
vim.api.nvim_set_keymap('n', '<leader>to', ':TodoTelescope<CR>', { noremap = true, silent = false })
-- Copilot
vim.api.nvim_set_keymap('i', '<C-J>', 'copilot#Accept()', { noremap = true, silent = true, expr = true })
-- Move.nvim
vim.api.nvim_set_keymap('n', '<A-j>', ":MoveLine(1)<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<A-k>', ":MoveLine(-1)<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<A-j>', ":MoveBlock(1)<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<A-k>', ":MoveBlock(-1)<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<A-l>', ":MoveHChar(1)<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<A-h>', ":MoveHChar(-1)<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<A-l>', ":MoveHBlock(1)<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<A-h>', ":MoveHBlock(-1)<CR>", { noremap = true, silent = true })
-- Trouble
vim.api.nvim_set_keymap("n", "<leader>xx", "<cmd>Trouble<cr>", { silent = true, noremap = true })
vim.api.nvim_set_keymap("n", "<leader>xw", "<cmd>Trouble workspace_diagnostics<cr>", { silent = true, noremap = true })
vim.api.nvim_set_keymap("n", "<leader>xd", "<cmd>Trouble document_diagnostics<cr>", { silent = true, noremap = true })
vim.api.nvim_set_keymap("n", "<leader>xl", "<cmd>Trouble loclist<cr>", { silent = true, noremap = true })
vim.api.nvim_set_keymap("n", "<leader>xq", "<cmd>Trouble quickfix<cr>", { silent = true, noremap = true })
vim.api.nvim_set_keymap("n", "gR", "<cmd>Trouble lsp_references<cr>", { silent = true, noremap = true })
-- Nvim-dap
vim.api.nvim_set_keymap("n", "<leader>dc", "<cmd>lua require'dap'.continue()<CR>", { silent = true, noremap = true })
vim.api.nvim_set_keymap("n", "<leader>ds", "<cmd>lua require'dap'.step_over()<CR>", { silent = true, noremap = true })
vim.api.nvim_set_keymap("n", "<leader>dsi", "<cmd>lua require'dap'.step_into()<CR>", { silent = true, noremap = true })
vim.api.nvim_set_keymap("n", "<leader>dso", "<cmd>lua require'dap'.step_out()<CR>", { silent = true, noremap = true })
vim.api.nvim_set_keymap("n", "<leader>db", "<cmd>lua require'dap'.toggle_breakpoint()<CR>", { silent = true, noremap = true })
vim.api.nvim_set_keymap("n", "<leader>dui", ":lua require('dapui').toggle()<cr>", { silent = true, noremap = true })
vim.api.nvim_set_keymap("n", "<leader>dro", "<cmd>lua require'dap'.repl.open()<CR>", { silent = true, noremap = true })
vim.api.nvim_set_keymap("n", "<leader>dcc", "<cmd>lua require'telescope'.extensions.dap.commands{}<CR>", { silent = true, noremap = true })
vim.api.nvim_set_keymap("n", "<leader>dlb", "<cmd>lua require'telescope'.extensions.dap.list_breakpoints{}<CR>", { silent = true, noremap = true })
vim.api.nvim_set_keymap("n", "<leader>dv", "<cmd>lua require'telescope'.extensions.dap.variables{}<CR>", { silent = true, noremap = true })
vim.api.nvim_set_keymap("n", "<leader>df", "<cmd>lua require'telescope'.extensions.dap.frames{}<CR>", { silent = true, noremap = true })
