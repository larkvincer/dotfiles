local treesitter_config = require('nvim-treesitter.configs')

treesitter_config.setup {
  ensure_installed = { 'c', 'lua', 'css', 'go', 'gomod', 'javascript', 'typescript', 'tsx', 'sql', 'json', 'yaml', 'dockerfile', 'gitcommit', 'gitignore', 'html', 'markdown', 'markdown_inline' },
  ignore_install = { 'phpdoc' },
  highlight = {
    enable = true,
  },
}
