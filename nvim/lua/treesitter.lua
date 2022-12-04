local treesitter_config = require('nvim-treesitter.configs')

treesitter_config.setup {
  ensure_installed = { 'c', 'lua', 'css', 'go', 'gomod', 'javascript', 'typescript', 'tsx', 'sql', 'json', 'yaml', 'dockerfile', 'gitcommit', 'gitignore', 'html' },
  ignore_install = { 'phpdoc' },
  highlight = {
    enable = true,
  },
}
