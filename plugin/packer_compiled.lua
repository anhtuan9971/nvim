-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/Users/tuananh/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/Users/tuananh/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/Users/tuananh/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/Users/tuananh/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/tuananh/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["Comment.nvim"] = {
    config = { "require'plugins.comment'" },
    loaded = true,
    path = "/Users/tuananh/.local/share/nvim/site/pack/packer/start/Comment.nvim",
    url = "https://github.com/numToStr/Comment.nvim"
  },
  LuaSnip = {
    after = { "cmp_luasnip" },
    loaded = true,
    only_config = true
  },
  ["LuaSnip-snippets.nvim"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/tuananh/.local/share/nvim/site/pack/packer/opt/LuaSnip-snippets.nvim",
    url = "https://github.com/molleweide/LuaSnip-snippets.nvim"
  },
  ["alpha-nvim"] = {
    config = { "require'plugins.alpha-nvim'" },
    loaded = true,
    path = "/Users/tuananh/.local/share/nvim/site/pack/packer/start/alpha-nvim",
    url = "https://github.com/goolord/alpha-nvim"
  },
  ["barbar.nvim"] = {
    loaded = true,
    path = "/Users/tuananh/.local/share/nvim/site/pack/packer/start/barbar.nvim",
    url = "https://github.com/romgrk/barbar.nvim"
  },
  ["clangd_extensions.nvim"] = {
    loaded = true,
    path = "/Users/tuananh/.local/share/nvim/site/pack/packer/start/clangd_extensions.nvim",
    url = "https://github.com/p00f/clangd_extensions.nvim"
  },
  ["cmp-buffer"] = {
    after = { "cmp-path" },
    after_files = { "/Users/tuananh/.local/share/nvim/site/pack/packer/opt/cmp-buffer/after/plugin/cmp_buffer.lua" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/Users/tuananh/.local/share/nvim/site/pack/packer/opt/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-calc"] = {
    loaded = true,
    path = "/Users/tuananh/.local/share/nvim/site/pack/packer/start/cmp-calc",
    url = "https://github.com/hrsh7th/cmp-calc"
  },
  ["cmp-cmdline"] = {
    loaded = true,
    path = "/Users/tuananh/.local/share/nvim/site/pack/packer/start/cmp-cmdline",
    url = "https://github.com/hrsh7th/cmp-cmdline"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/Users/tuananh/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-nvim-lua"] = {
    after_files = { "/Users/tuananh/.local/share/nvim/site/pack/packer/opt/cmp-nvim-lua/after/plugin/cmp_nvim_lua.lua" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/Users/tuananh/.local/share/nvim/site/pack/packer/opt/cmp-nvim-lua",
    url = "https://github.com/hrsh7th/cmp-nvim-lua"
  },
  ["cmp-path"] = {
    after_files = { "/Users/tuananh/.local/share/nvim/site/pack/packer/opt/cmp-path/after/plugin/cmp_path.lua" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/Users/tuananh/.local/share/nvim/site/pack/packer/opt/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  ["cmp-treesitter"] = {
    loaded = true,
    path = "/Users/tuananh/.local/share/nvim/site/pack/packer/start/cmp-treesitter",
    url = "https://github.com/ray-x/cmp-treesitter"
  },
  cmp_luasnip = {
    after = { "cmp-nvim-lua" },
    after_files = { "/Users/tuananh/.local/share/nvim/site/pack/packer/opt/cmp_luasnip/after/plugin/cmp_luasnip.lua" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/Users/tuananh/.local/share/nvim/site/pack/packer/opt/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["committia.vim"] = {
    loaded = true,
    path = "/Users/tuananh/.local/share/nvim/site/pack/packer/start/committia.vim",
    url = "https://github.com/rhysd/committia.vim"
  },
  ["copilot.vim"] = {
    config = { "require'plugins.copilot'" },
    loaded = true,
    path = "/Users/tuananh/.local/share/nvim/site/pack/packer/start/copilot.vim",
    url = "https://github.com/github/copilot.vim"
  },
  ["csv.vim"] = {
    loaded = true,
    path = "/Users/tuananh/.local/share/nvim/site/pack/packer/start/csv.vim",
    url = "https://github.com/chrisbra/csv.vim"
  },
  ["ctrlsf.vim"] = {
    config = { "require'plugins.ctrlsf'" },
    loaded = true,
    path = "/Users/tuananh/.local/share/nvim/site/pack/packer/start/ctrlsf.vim",
    url = "https://github.com/dyng/ctrlsf.vim"
  },
  ["editorconfig-vim"] = {
    config = { "require'plugins.editorconfig'" },
    loaded = true,
    path = "/Users/tuananh/.local/share/nvim/site/pack/packer/start/editorconfig-vim",
    url = "https://github.com/editorconfig/editorconfig-vim"
  },
  ["feline.nvim"] = {
    config = { "require'plugins.feline'" },
    loaded = true,
    path = "/Users/tuananh/.local/share/nvim/site/pack/packer/start/feline.nvim",
    url = "https://github.com/famiu/feline.nvim"
  },
  ["filetype.nvim"] = {
    loaded = true,
    path = "/Users/tuananh/.local/share/nvim/site/pack/packer/start/filetype.nvim",
    url = "https://github.com/nathom/filetype.nvim"
  },
  ["focus.nvim"] = {
    config = { "require'plugins.focus'" },
    loaded = true,
    path = "/Users/tuananh/.local/share/nvim/site/pack/packer/start/focus.nvim",
    url = "https://github.com/beauwilliams/focus.nvim"
  },
  ["formatter.nvim"] = {
    config = { "require'plugins.formatter'" },
    loaded = true,
    path = "/Users/tuananh/.local/share/nvim/site/pack/packer/start/formatter.nvim",
    url = "https://github.com/mhartington/formatter.nvim"
  },
  ["friendly-snippets"] = {
    loaded = true,
    path = "/Users/tuananh/.local/share/nvim/site/pack/packer/start/friendly-snippets",
    url = "https://github.com/rafamadriz/friendly-snippets"
  },
  ["gh.nvim"] = {
    config = { "require'plugins.gh'" },
    loaded = true,
    path = "/Users/tuananh/.local/share/nvim/site/pack/packer/start/gh.nvim",
    url = "https://github.com/ldelossa/gh.nvim"
  },
  ["gitsigns.nvim"] = {
    config = { "require'plugins.gitsigns'" },
    loaded = true,
    path = "/Users/tuananh/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["gruvbox-material"] = {
    loaded = true,
    path = "/Users/tuananh/.local/share/nvim/site/pack/packer/start/gruvbox-material",
    url = "https://github.com/sainnhe/gruvbox-material"
  },
  harpoon = {
    config = { "require'plugins.harpoon'" },
    loaded = true,
    path = "/Users/tuananh/.local/share/nvim/site/pack/packer/start/harpoon",
    url = "https://github.com/ThePrimeagen/harpoon"
  },
  ["indent-blankline.nvim"] = {
    config = { "require'plugins.indent-blankline'" },
    loaded = true,
    path = "/Users/tuananh/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim",
    url = "https://github.com/lukas-reineke/indent-blankline.nvim"
  },
  ["lazygit.nvim"] = {
    loaded = true,
    path = "/Users/tuananh/.local/share/nvim/site/pack/packer/start/lazygit.nvim",
    url = "https://github.com/kdheepak/lazygit.nvim"
  },
  ["lightspeed.nvim"] = {
    config = { "require'plugins.lightspeed'" },
    loaded = true,
    path = "/Users/tuananh/.local/share/nvim/site/pack/packer/start/lightspeed.nvim",
    url = "https://github.com/ggandor/lightspeed.nvim"
  },
  ["litee.nvim"] = {
    config = { "require'plugins.litee'" },
    loaded = true,
    path = "/Users/tuananh/.local/share/nvim/site/pack/packer/start/litee.nvim",
    url = "https://github.com/ldelossa/litee.nvim"
  },
  ["lsp-colors.nvim"] = {
    config = { "require'plugins.lsp-colors'" },
    loaded = true,
    path = "/Users/tuananh/.local/share/nvim/site/pack/packer/start/lsp-colors.nvim",
    url = "https://github.com/folke/lsp-colors.nvim"
  },
  ["lsp-zero.nvim"] = {
    loaded = true,
    path = "/Users/tuananh/.local/share/nvim/site/pack/packer/start/lsp-zero.nvim",
    url = "https://github.com/VonHeikemen/lsp-zero.nvim"
  },
  ["lsp_signature.nvim"] = {
    loaded = true,
    path = "/Users/tuananh/.local/share/nvim/site/pack/packer/start/lsp_signature.nvim",
    url = "https://github.com/ray-x/lsp_signature.nvim"
  },
  ["lspkind-nvim"] = {
    loaded = true,
    path = "/Users/tuananh/.local/share/nvim/site/pack/packer/start/lspkind-nvim",
    url = "https://github.com/onsails/lspkind-nvim"
  },
  ["minimap.vim"] = {
    config = { "require'plugins.minimap'" },
    loaded = true,
    path = "/Users/tuananh/.local/share/nvim/site/pack/packer/start/minimap.vim",
    url = "https://github.com/wfxr/minimap.vim"
  },
  ["move.nvim"] = {
    loaded = true,
    path = "/Users/tuananh/.local/share/nvim/site/pack/packer/start/move.nvim",
    url = "https://github.com/fedepujol/move.nvim"
  },
  ["neoscroll.nvim"] = {
    config = { "require'plugins.neoscroll'" },
    loaded = true,
    path = "/Users/tuananh/.local/share/nvim/site/pack/packer/start/neoscroll.nvim",
    url = "https://github.com/karb94/neoscroll.nvim"
  },
  ["numb.nvim"] = {
    config = { "require'plugins.numb'" },
    loaded = true,
    path = "/Users/tuananh/.local/share/nvim/site/pack/packer/start/numb.nvim",
    url = "https://github.com/nacro90/numb.nvim"
  },
  ["nvim-autopairs"] = {
    config = { "require'plugins.nvim-autopairs'" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/Users/tuananh/.local/share/nvim/site/pack/packer/opt/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-bqf"] = {
    loaded = true,
    path = "/Users/tuananh/.local/share/nvim/site/pack/packer/start/nvim-bqf",
    url = "https://github.com/kevinhwang91/nvim-bqf"
  },
  ["nvim-cmp"] = {
    after = { "nvim-autopairs" },
    loaded = true,
    only_config = true
  },
  ["nvim-code-action-menu"] = {
    commands = { "CodeActionMenu" },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/Users/tuananh/.local/share/nvim/site/pack/packer/opt/nvim-code-action-menu",
    url = "https://github.com/weilbith/nvim-code-action-menu"
  },
  ["nvim-colorizer.lua"] = {
    config = { "require'plugins.colorizer'" },
    loaded = true,
    path = "/Users/tuananh/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua",
    url = "https://github.com/crivotz/nvim-colorizer.lua"
  },
  ["nvim-gps"] = {
    config = { "require'plugins.nvim-gps'" },
    loaded = true,
    path = "/Users/tuananh/.local/share/nvim/site/pack/packer/start/nvim-gps",
    url = "https://github.com/SmiteshP/nvim-gps"
  },
  ["nvim-hlslens"] = {
    config = { "require'plugins.hlslens'" },
    loaded = true,
    path = "/Users/tuananh/.local/share/nvim/site/pack/packer/start/nvim-hlslens",
    url = "https://github.com/kevinhwang91/nvim-hlslens"
  },
  ["nvim-jdtls"] = {
    loaded = true,
    path = "/Users/tuananh/.local/share/nvim/site/pack/packer/start/nvim-jdtls",
    url = "https://github.com/mfussenegger/nvim-jdtls"
  },
  ["nvim-lsp-installer"] = {
    loaded = true,
    path = "/Users/tuananh/.local/share/nvim/site/pack/packer/start/nvim-lsp-installer",
    url = "https://github.com/williamboman/nvim-lsp-installer"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/Users/tuananh/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-neoclip.lua"] = {
    config = { "require'plugins.nvim-neoclip'" },
    loaded = true,
    path = "/Users/tuananh/.local/share/nvim/site/pack/packer/start/nvim-neoclip.lua",
    url = "https://github.com/AckslD/nvim-neoclip.lua"
  },
  ["nvim-notify"] = {
    config = { "require'plugins.nvim-notify'" },
    loaded = true,
    path = "/Users/tuananh/.local/share/nvim/site/pack/packer/start/nvim-notify",
    url = "https://github.com/rcarriga/nvim-notify"
  },
  ["nvim-scrollview"] = {
    loaded = true,
    path = "/Users/tuananh/.local/share/nvim/site/pack/packer/start/nvim-scrollview",
    url = "https://github.com/dstein64/nvim-scrollview"
  },
  ["nvim-tree.lua"] = {
    config = { "require'plugins.nvimtree'" },
    loaded = true,
    path = "/Users/tuananh/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/kyazdani42/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    config = { "require'plugins.treesitter'" },
    loaded = true,
    path = "/Users/tuananh/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-treesitter-context"] = {
    loaded = true,
    path = "/Users/tuananh/.local/share/nvim/site/pack/packer/start/nvim-treesitter-context",
    url = "https://github.com/lewis6991/nvim-treesitter-context"
  },
  ["nvim-ts-context-commentstring"] = {
    loaded = true,
    path = "/Users/tuananh/.local/share/nvim/site/pack/packer/start/nvim-ts-context-commentstring",
    url = "https://github.com/JoosepAlviste/nvim-ts-context-commentstring"
  },
  ["nvim-ts-rainbow"] = {
    config = { "require'plugins.nvim-ts-rainbow'" },
    loaded = true,
    path = "/Users/tuananh/.local/share/nvim/site/pack/packer/start/nvim-ts-rainbow",
    url = "https://github.com/p00f/nvim-ts-rainbow"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/Users/tuananh/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["octo.nvim"] = {
    config = { "require'plugins.octo'" },
    loaded = true,
    path = "/Users/tuananh/.local/share/nvim/site/pack/packer/start/octo.nvim",
    url = "https://github.com/pwntester/octo.nvim"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/Users/tuananh/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/Users/tuananh/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/Users/tuananh/.local/share/nvim/site/pack/packer/start/popup.nvim",
    url = "https://github.com/nvim-lua/popup.nvim"
  },
  ["registers.nvim"] = {
    loaded = true,
    path = "/Users/tuananh/.local/share/nvim/site/pack/packer/start/registers.nvim",
    url = "https://github.com/tversteeg/registers.nvim"
  },
  ["run.nvim"] = {
    loaded = true,
    path = "/Users/tuananh/.local/share/nvim/site/pack/packer/start/run.nvim",
    url = "https://github.com/anhtuan9971/run.nvim"
  },
  ["rust-tools.nvim"] = {
    loaded = true,
    path = "/Users/tuananh/.local/share/nvim/site/pack/packer/start/rust-tools.nvim",
    url = "https://github.com/simrat39/rust-tools.nvim"
  },
  ["stabilize.nvim"] = {
    config = { "require'plugins.stabilize'" },
    loaded = true,
    path = "/Users/tuananh/.local/share/nvim/site/pack/packer/start/stabilize.nvim",
    url = "https://github.com/luukvbaal/stabilize.nvim"
  },
  ["tagalong.vim"] = {
    loaded = true,
    path = "/Users/tuananh/.local/share/nvim/site/pack/packer/start/tagalong.vim",
    url = "https://github.com/AndrewRadev/tagalong.vim"
  },
  ["telescope-fzy-native.nvim"] = {
    loaded = true,
    path = "/Users/tuananh/.local/share/nvim/site/pack/packer/start/telescope-fzy-native.nvim",
    url = "https://github.com/nvim-telescope/telescope-fzy-native.nvim"
  },
  ["telescope-repo.nvim"] = {
    loaded = true,
    path = "/Users/tuananh/.local/share/nvim/site/pack/packer/start/telescope-repo.nvim",
    url = "https://github.com/cljoly/telescope-repo.nvim"
  },
  ["telescope-ui-select.nvim"] = {
    config = { "require'plugins.telescope-ui'" },
    loaded = true,
    path = "/Users/tuananh/.local/share/nvim/site/pack/packer/start/telescope-ui-select.nvim",
    url = "https://github.com/nvim-telescope/telescope-ui-select.nvim"
  },
  ["telescope.nvim"] = {
    config = { "require'plugins.telescope'" },
    loaded = true,
    path = "/Users/tuananh/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["todo-comments.nvim"] = {
    config = { "require'plugins.todo-comments'" },
    loaded = true,
    path = "/Users/tuananh/.local/share/nvim/site/pack/packer/start/todo-comments.nvim",
    url = "https://github.com/folke/todo-comments.nvim"
  },
  ["toggleterm.nvim"] = {
    config = { "require'plugins.toggleterm'" },
    loaded = true,
    path = "/Users/tuananh/.local/share/nvim/site/pack/packer/start/toggleterm.nvim",
    url = "https://github.com/akinsho/toggleterm.nvim"
  },
  ["trouble.nvim"] = {
    loaded = true,
    path = "/Users/tuananh/.local/share/nvim/site/pack/packer/start/trouble.nvim",
    url = "https://github.com/folke/trouble.nvim"
  },
  ["vim-abolish"] = {
    loaded = true,
    path = "/Users/tuananh/.local/share/nvim/site/pack/packer/start/vim-abolish",
    url = "https://github.com/tpope/vim-abolish"
  },
  ["vim-bundler"] = {
    loaded = true,
    path = "/Users/tuananh/.local/share/nvim/site/pack/packer/start/vim-bundler",
    url = "https://github.com/tpope/vim-bundler"
  },
  ["vim-capslock"] = {
    loaded = true,
    path = "/Users/tuananh/.local/share/nvim/site/pack/packer/start/vim-capslock",
    url = "https://github.com/tpope/vim-capslock"
  },
  ["vim-codepainter"] = {
    loaded = true,
    path = "/Users/tuananh/.local/share/nvim/site/pack/packer/start/vim-codepainter",
    url = "https://github.com/lpinilla/vim-codepainter"
  },
  ["vim-commentary"] = {
    loaded = true,
    path = "/Users/tuananh/.local/share/nvim/site/pack/packer/start/vim-commentary",
    url = "https://github.com/tpope/vim-commentary"
  },
  ["vim-dadbod"] = {
    loaded = true,
    path = "/Users/tuananh/.local/share/nvim/site/pack/packer/start/vim-dadbod",
    url = "https://github.com/tpope/vim-dadbod"
  },
  ["vim-devicons"] = {
    loaded = true,
    path = "/Users/tuananh/.local/share/nvim/site/pack/packer/start/vim-devicons",
    url = "https://github.com/ryanoasis/vim-devicons"
  },
  ["vim-dispatch"] = {
    loaded = true,
    path = "/Users/tuananh/.local/share/nvim/site/pack/packer/start/vim-dispatch",
    url = "https://github.com/tpope/vim-dispatch"
  },
  ["vim-easy-align"] = {
    loaded = true,
    path = "/Users/tuananh/.local/share/nvim/site/pack/packer/start/vim-easy-align",
    url = "https://github.com/junegunn/vim-easy-align"
  },
  ["vim-endwise"] = {
    loaded = true,
    path = "/Users/tuananh/.local/share/nvim/site/pack/packer/start/vim-endwise",
    url = "https://github.com/tpope/vim-endwise"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/Users/tuananh/.local/share/nvim/site/pack/packer/start/vim-fugitive",
    url = "https://github.com/tpope/vim-fugitive"
  },
  ["vim-jdaddy"] = {
    loaded = true,
    path = "/Users/tuananh/.local/share/nvim/site/pack/packer/start/vim-jdaddy",
    url = "https://github.com/tpope/vim-jdaddy"
  },
  ["vim-matchup"] = {
    loaded = true,
    path = "/Users/tuananh/.local/share/nvim/site/pack/packer/start/vim-matchup",
    url = "https://github.com/andymass/vim-matchup"
  },
  ["vim-node"] = {
    loaded = true,
    path = "/Users/tuananh/.local/share/nvim/site/pack/packer/start/vim-node",
    url = "https://github.com/moll/vim-node"
  },
  ["vim-numbertoggle"] = {
    loaded = true,
    path = "/Users/tuananh/.local/share/nvim/site/pack/packer/start/vim-numbertoggle",
    url = "https://github.com/jeffkreeftmeijer/vim-numbertoggle"
  },
  ["vim-rails"] = {
    loaded = true,
    path = "/Users/tuananh/.local/share/nvim/site/pack/packer/start/vim-rails",
    url = "https://github.com/tpope/vim-rails"
  },
  ["vim-repeat"] = {
    loaded = true,
    path = "/Users/tuananh/.local/share/nvim/site/pack/packer/start/vim-repeat",
    url = "https://github.com/tpope/vim-repeat"
  },
  ["vim-startify"] = {
    loaded = true,
    path = "/Users/tuananh/.local/share/nvim/site/pack/packer/start/vim-startify",
    url = "https://github.com/mhinz/vim-startify"
  },
  ["vim-startuptime"] = {
    loaded = true,
    path = "/Users/tuananh/.local/share/nvim/site/pack/packer/start/vim-startuptime",
    url = "https://github.com/dstein64/vim-startuptime"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/Users/tuananh/.local/share/nvim/site/pack/packer/start/vim-surround",
    url = "https://github.com/tpope/vim-surround"
  },
  ["vim-tmux-navigator"] = {
    loaded = true,
    path = "/Users/tuananh/.local/share/nvim/site/pack/packer/start/vim-tmux-navigator",
    url = "https://github.com/christoomey/vim-tmux-navigator"
  },
  ["vim-wordmotion"] = {
    loaded = true,
    path = "/Users/tuananh/.local/share/nvim/site/pack/packer/start/vim-wordmotion",
    url = "https://github.com/chaoren/vim-wordmotion"
  },
  ["which-key.nvim"] = {
    config = { "require'plugins.which_key'" },
    loaded = true,
    path = "/Users/tuananh/.local/share/nvim/site/pack/packer/start/which-key.nvim",
    url = "https://github.com/folke/which-key.nvim"
  },
  ["zinit-vim-syntax"] = {
    loaded = true,
    path = "/Users/tuananh/.local/share/nvim/site/pack/packer/start/zinit-vim-syntax",
    url = "https://github.com/zdharma-continuum/zinit-vim-syntax"
  }
}

time([[Defining packer_plugins]], false)
local module_lazy_loads = {
  ["^cmp_nvim_lsp"] = "LuaSnip-snippets.nvim"
}
local lazy_load_called = {['packer.load'] = true}
local function lazy_load_module(module_name)
  local to_load = {}
  if lazy_load_called[module_name] then return nil end
  lazy_load_called[module_name] = true
  for module_pat, plugin_name in pairs(module_lazy_loads) do
    if not _G.packer_plugins[plugin_name].loaded and string.match(module_name, module_pat) then
      to_load[#to_load + 1] = plugin_name
    end
  end

  if #to_load > 0 then
    require('packer.load')(to_load, {module = module_name}, _G.packer_plugins)
    local loaded_mod = package.loaded[module_name]
    if loaded_mod then
      return function(modname) return loaded_mod end
    end
  end
end

if not vim.g.packer_custom_loader_enabled then
  table.insert(package.loaders, 1, lazy_load_module)
  vim.g.packer_custom_loader_enabled = true
end

-- Config for: lightspeed.nvim
time([[Config for lightspeed.nvim]], true)
require'plugins.lightspeed'
time([[Config for lightspeed.nvim]], false)
-- Config for: nvim-gps
time([[Config for nvim-gps]], true)
require'plugins.nvim-gps'
time([[Config for nvim-gps]], false)
-- Config for: litee.nvim
time([[Config for litee.nvim]], true)
require'plugins.litee'
time([[Config for litee.nvim]], false)
-- Config for: nvim-hlslens
time([[Config for nvim-hlslens]], true)
require'plugins.hlslens'
time([[Config for nvim-hlslens]], false)
-- Config for: LuaSnip
time([[Config for LuaSnip]], true)
require'plugins.LuaSnip'
time([[Config for LuaSnip]], false)
-- Config for: lsp-colors.nvim
time([[Config for lsp-colors.nvim]], true)
require'plugins.lsp-colors'
time([[Config for lsp-colors.nvim]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
require'plugins.cmp'
time([[Config for nvim-cmp]], false)
-- Config for: nvim-neoclip.lua
time([[Config for nvim-neoclip.lua]], true)
require'plugins.nvim-neoclip'
time([[Config for nvim-neoclip.lua]], false)
-- Config for: nvim-notify
time([[Config for nvim-notify]], true)
require'plugins.nvim-notify'
time([[Config for nvim-notify]], false)
-- Config for: minimap.vim
time([[Config for minimap.vim]], true)
require'plugins.minimap'
time([[Config for minimap.vim]], false)
-- Config for: copilot.vim
time([[Config for copilot.vim]], true)
require'plugins.copilot'
time([[Config for copilot.vim]], false)
-- Config for: stabilize.nvim
time([[Config for stabilize.nvim]], true)
require'plugins.stabilize'
time([[Config for stabilize.nvim]], false)
-- Config for: Comment.nvim
time([[Config for Comment.nvim]], true)
require'plugins.comment'
time([[Config for Comment.nvim]], false)
-- Config for: ctrlsf.vim
time([[Config for ctrlsf.vim]], true)
require'plugins.ctrlsf'
time([[Config for ctrlsf.vim]], false)
-- Config for: editorconfig-vim
time([[Config for editorconfig-vim]], true)
require'plugins.editorconfig'
time([[Config for editorconfig-vim]], false)
-- Config for: feline.nvim
time([[Config for feline.nvim]], true)
require'plugins.feline'
time([[Config for feline.nvim]], false)
-- Config for: alpha-nvim
time([[Config for alpha-nvim]], true)
require'plugins.alpha-nvim'
time([[Config for alpha-nvim]], false)
-- Config for: telescope-ui-select.nvim
time([[Config for telescope-ui-select.nvim]], true)
require'plugins.telescope-ui'
time([[Config for telescope-ui-select.nvim]], false)
-- Config for: focus.nvim
time([[Config for focus.nvim]], true)
require'plugins.focus'
time([[Config for focus.nvim]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
require'plugins.telescope'
time([[Config for telescope.nvim]], false)
-- Config for: formatter.nvim
time([[Config for formatter.nvim]], true)
require'plugins.formatter'
time([[Config for formatter.nvim]], false)
-- Config for: todo-comments.nvim
time([[Config for todo-comments.nvim]], true)
require'plugins.todo-comments'
time([[Config for todo-comments.nvim]], false)
-- Config for: toggleterm.nvim
time([[Config for toggleterm.nvim]], true)
require'plugins.toggleterm'
time([[Config for toggleterm.nvim]], false)
-- Config for: gh.nvim
time([[Config for gh.nvim]], true)
require'plugins.gh'
time([[Config for gh.nvim]], false)
-- Config for: neoscroll.nvim
time([[Config for neoscroll.nvim]], true)
require'plugins.neoscroll'
time([[Config for neoscroll.nvim]], false)
-- Config for: gitsigns.nvim
time([[Config for gitsigns.nvim]], true)
require'plugins.gitsigns'
time([[Config for gitsigns.nvim]], false)
-- Config for: numb.nvim
time([[Config for numb.nvim]], true)
require'plugins.numb'
time([[Config for numb.nvim]], false)
-- Config for: which-key.nvim
time([[Config for which-key.nvim]], true)
require'plugins.which_key'
time([[Config for which-key.nvim]], false)
-- Config for: harpoon
time([[Config for harpoon]], true)
require'plugins.harpoon'
time([[Config for harpoon]], false)
-- Config for: indent-blankline.nvim
time([[Config for indent-blankline.nvim]], true)
require'plugins.indent-blankline'
time([[Config for indent-blankline.nvim]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
require'plugins.nvimtree'
time([[Config for nvim-tree.lua]], false)
-- Config for: octo.nvim
time([[Config for octo.nvim]], true)
require'plugins.octo'
time([[Config for octo.nvim]], false)
-- Config for: nvim-ts-rainbow
time([[Config for nvim-ts-rainbow]], true)
require'plugins.nvim-ts-rainbow'
time([[Config for nvim-ts-rainbow]], false)
-- Config for: nvim-colorizer.lua
time([[Config for nvim-colorizer.lua]], true)
require'plugins.colorizer'
time([[Config for nvim-colorizer.lua]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
require'plugins.treesitter'
time([[Config for nvim-treesitter]], false)
-- Load plugins in order defined by `after`
time([[Sequenced loading]], true)
vim.cmd [[ packadd cmp-nvim-lsp ]]
vim.cmd [[ packadd cmp-buffer ]]
vim.cmd [[ packadd cmp-path ]]
vim.cmd [[ packadd cmp_luasnip ]]
vim.cmd [[ packadd cmp-nvim-lua ]]
vim.cmd [[ packadd nvim-autopairs ]]

-- Config for: nvim-autopairs
require'plugins.nvim-autopairs'

time([[Sequenced loading]], false)

-- Command lazy-loads
time([[Defining lazy-load commands]], true)
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file CodeActionMenu lua require("packer.load")({'nvim-code-action-menu'}, { cmd = "CodeActionMenu", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
time([[Defining lazy-load commands]], false)

vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Event lazy-loads
time([[Defining lazy-load event autocommands]], true)
vim.cmd [[au InsertEnter * ++once lua require("packer.load")({'LuaSnip-snippets.nvim'}, { event = "InsertEnter *" }, _G.packer_plugins)]]
time([[Defining lazy-load event autocommands]], false)
vim.cmd("augroup END")
if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
