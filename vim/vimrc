" True color
set termguicolors

" Specify a directory for plugins (for Neovim: ~/.local/share/nvim/plugged)
call plug#begin('~/.config/nvim/plugged')

" Make sure you use single quotes

" On-demand loading
Plug 'scrooloose/nerdtree'
Plug 'https://github.com/mhartington/oceanic-next'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'kien/ctrlp.vim' 

" Initialize plugin system
call plug#end()

map <C-n> :NERDTreeToggle<CR>
colorscheme OceanicNext
let g:airline_powerline_fonts = 1
let g:airline_theme = "light"
set tabstop=2
set shiftwidth=2
set expandtab
" This unsets the 'last search pattern' register by hitting return
nnoremap <CR> :noh<CR><CR>
