-- If you started neovim within `~/dev/xy/project-1` this would resolve to `project-1`
local project_name = vim.fn.fnamemodify(vim.fn.getcwd(), ':p:h:t')
local workspace_dir = 'projects/' .. project_name
-- See `:help vim.lsp.start_client` for an overview of the supported `config` options.
local config = {
  -- The command that starts the language server
  -- See: https://github.com/eclipse/eclipse.jdt.ls#running-from-the-command-line
  cmd = {

    -- ??
    'java',
    '-Declipse.application=org.eclipse.jdt.ls.core.id1',
    '-Dosgi.bundles.defaultStartLevel=4',
    '-Declipse.product=org.eclipse.jdt.ls.core.product',
    '-Dlog.protocol=true',
    '-Dlog.level=ALL',
    '-Xms1g',
    '--add-modules=ALL-SYSTEM',
    '--add-opens', 'java.base/java.util=ALL-UNNAMED',
    '--add-opens', 'java.base/java.lang=ALL-UNNAMED',

    --lambda
    '-javaagent:/Users/tuananh/.config/nvim/ftplugin/nvim-jdtls/lombok.jar',
    '-Xbootclasspath/a:/Users/tuananh/.config/nvim/ftplugin/nvim-jdtls/lombok.jar',

    -- ??
    '-jar', '/Users/tuananh/.config/nvim/ftplugin/nvim-jdtls/plugins/org.eclipse.equinox.launcher_1.6.400.v20210924-0641.jar',
    '-configuration', '/Users/tuananh/.config/nvim/ftplugin/nvim-jdtls/config_mac',
    '-data', workspace_dir,
  },

  -- ??
  -- This is the default if not provided, you can remove it. Or adjust as needed.
  -- One dedicated LSP server & client will be started per unique root_dir
  root_dir = require('jdtls.setup').find_root({'.md', '.git', 'mvnw', 'gradlew'}),

  -- Here you can configure eclipse.jdt.ls specific settings
  -- See https://github.com/eclipse/eclipse.jdt.ls/wiki/Running-the-JAVA-LS-server-from-the-command-line#initialize-request
  -- for a list of options
  settings = {
    java = {
    }
  },
  init_options = {
    bundles = {}
  }
}
-- This starts a new client & server,
-- or attaches to an existing client & server depending on the `root_dir`.
require('jdtls').start_or_attach(config)
