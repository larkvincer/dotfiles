local cmd = vim.cmd
local g = vim.g

g.mapleader = ','

-- bindings for easy split nav
cmd 'nnoremap <C-h> <C-w>h'
cmd 'nnoremap <C-j> <C-w>j'
cmd 'nnoremap <C-k> <C-w>k'
cmd 'nnoremap <C-l> <C-w>l'

-- Quick switch between buffers
cmd 'map gn :bn<cr>'
cmd 'map gp :bp<cr>'

cmd 'map gt :tabNext<cr>'

-- Clear match highlighting.
cmd 'map <leader><space> :noh<cr>'

-- Find file in project structure.
cmd 'map <C-\\> :NvimTreeToggle<CR>'
cmd 'map <leader>s :NvimTreeFindFile<cr>'

-- Telescope code search.
cmd 'map <leader>p :e#<cr>'
cmd 'map <leader>f :Telescope find_files<cr>'
cmd 'map <leader>a :Telescope live_grep<cr>'
cmd 'map <leader>b :Telescope buffers<cr>'

