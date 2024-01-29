vim.opt.list = true
vim.opt.listchars:append "space:⋅"
vim.opt.listchars:append "eol:↴"
vim.opt.listchars:append "tab:→ "
vim.opt.listchars:append "trail: "

local highlight = {
    "CursorColumn",
    "Whitespace",
}

require("ibl").setup {
  -- indent = { highlight = highlight, char = "" },
  scope = { enabled = true, show_start = false },
}
