local cmd = vim.cmd  -- to execute Vim commands e.g. cmd('pwd')
local opt = vim.opt 


opt.termguicolors = true
-- cmd "colorscheme github


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

-- " autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
-- " autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear


-- set lcs=tab:—-,trail:·,eol:¬
opt.list = true
opt.number = true
opt.mouse="a"
-- set wrap!
-- set cursorline

-- let g:airline_theme= 'one'
-- colorscheme github_light

opt.iminsert=0
opt.imsearch=0
opt.encoding="UTF-8"

-- Ukranian keymap
-- opt.langmap="~ФИСВУАПРШОЛДЬТЩЗЙКІЕГМЦЧНЯ'ХЇЖ;~ABCDEFGHIJKLMNOPQRSTUVWXYZ'{}:,
--\фисвуапршолдьтщзйкіегмцчня;abcdefghijklmnopqrstuvwxyz"

