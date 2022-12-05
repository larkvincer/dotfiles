require("nvim-tree").setup({
  view = {
    adaptive_size = true,
    centralize_selection = true,
  },
  renderer = {
    highlight_opened_files = 'all',
  },
  update_focused_file = {
    enable = true,
    update_root = false,
    ignore_list = {},
  },
})
