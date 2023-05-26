local cmd = vim.cmd  -- to execute Vim commands e.g. cmd('pwd')
local opt = vim.opt

opt.termguicolors = true

opt.tabstop=2
opt.shiftwidth=2
opt.softtabstop=2
opt.smarttab = true -- let's tab key insert 'tab stops', and bksp deletes tabs.
opt.expandtab = true
opt.shiftround = true -- tab / shifting moves to closest tabstop.
opt.autoindent = true -- Match indents on new lines.
opt.smartindent = true -- Intellegently dedent / indent new lines based on rules.

cmd "filetype plugin indent on"
cmd "filetype plugin on"

-- We have VCS -- we don't need this stuff.
opt.backup = false
opt.writebackup = false
opt.swapfile = false

opt.hidden = true -- allow me to have buffers with unsaved changes.

-- Make search more sane
opt.ignorecase = true
opt.smartcase = true
opt.incsearch = true
opt.showmatch = true
opt.hlsearch = true

opt.number = true
opt.mouse="a"

opt.iminsert=0
opt.imsearch=0
opt.encoding="UTF-8"

-- Ukranian keymap
-- opt.langmap="~ФИСВУАПРШОЛДЬТЩЗЙКІЕГМЦЧНЯ'ХЇЖ;~ABCDEFGHIJKLMNOPQRSTUVWXYZ'{}:,
--\фисвуапршолдьтщзйкіегмцчня;abcdefghijklmnopqrstuvwxyz"

