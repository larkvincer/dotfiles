vim.opt.list = true
vim.opt.listchars:append "space:⋅"
vim.opt.listchars:append "eol:↴"
vim.opt.listchars:append "tab:→ "
vim.opt.listchars:append "trail: "


require("indent_blankline").setup {
    -- for example, context is off by default, use this to turn it on
    space_char_blankline = " ",
    show_end_of_line = true,
    show_current_context = false,
    show_current_context_start = true,
}
