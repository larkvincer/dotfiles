local treesitter_config = require('nvim-treesitter.configs')

treesitter_config.setup {
  ensure_installed = "all",
  ignore_install = { "phpdoc" },
  highlight = {
    enable = true,
  },
}
