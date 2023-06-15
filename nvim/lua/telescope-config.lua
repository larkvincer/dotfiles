local telescope = require('telescope')

telescope.setup {
  defaults = {
    file_ignore_patterns = { "node_modules" },
  },
  pickers = {
    buffers = {
      sort_mru = true
    }
  }
}
