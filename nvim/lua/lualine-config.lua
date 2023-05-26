-- Lualine
require("lualine").setup {
  options = {
    theme = "auto",
    component_separators = {"", ""},
    icons_enabled = true,
    globalstatus = true
  },
  sections = {
      lualine_a = {'mode'},
      lualine_b = {'branch'},
      lualine_c = {'filename', 'diff'},
      lualine_x = {{'diagnostics', sources={'nvim_diagnostic'}}, 'encoding', 'fileformat', 'filetype'},
      lualine_y = {'progress'},
      lualine_z = {'location'}
  },
  inactive_sections = {lualine_a = {}, lualine_b = {}, lualine_c = {'filename'}, lualine_x = {}, lualine_y = {}, lualine_z = {'location'}},
  extensions = {"quickfix", "fugitive", "nvim-tree"}
}
