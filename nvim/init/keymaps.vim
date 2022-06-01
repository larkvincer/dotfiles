let mapleader = ","

" bindings for easy split nav
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Quick switch between buffers
map gn :bn<cr>
map gp :bp<cr>

map gt :tabNext<cr>

" Clear match highlighting.
map <leader><space> :noh<cr>

" Find file in project structure.
map <C-\> :NvimTreeToggle<CR>
map <leader>s :NvimTreeFindFile<cr>

" Telescope code search.
map <leader>p :e#<cr>
map <leader>f :Telescope find_files<cr>
map <leader>a :Telescope live_grep<cr>
map <leader>b :Telescope buffers<cr>

