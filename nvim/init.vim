" Specify a directory for plugins (for Neovim: ~/.local/share/nvim/plugged)
call plug#begin('~/.local/share/nvim/plugged')
" Themes
Plug 'projekt0n/github-nvim-theme'
" Explorer
Plug 'scrooloose/nerdtree'
" Draw colors on color hash
Plug 'lilydjwg/colorizer'
" Icons
Plug 'ryanoasis/vim-devicons'
" Editor config plugin
Plug 'editorconfig/editorconfig-vim'
" Fuzzy finder
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
" Close buffers, human way
Plug 'Asheq/close-buffers.vim'
" Support for easily toggling comments.
Plug 'tpope/vim-commentary'
" Surround with stuff
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
" Autocompletion engine
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Brackets autocomplete
Plug 'git://github.com/jiangmiao/auto-pairs.git'
" Auto buffer reload if file changed
Plug 'djoshea/vim-autoread'
" Airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Syntax
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
" git integration
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'rhysd/git-messenger.vim'
" Zen coding
Plug 'mattn/emmet-vim'
" Initialize plugin system
call plug#end()

source /home/pavlokuziv/.config/nvim/init/options.vim
source /home/pavlokuziv/.config/nvim/init/keymaps.vim
source /home/pavlokuziv/.config/nvim/init/airline.vim
source /home/pavlokuziv/.config/nvim/init/coc.vim
source /home/pavlokuziv/.config/nvim/init/devicons.vim
luafile /home/pavlokuziv/.config/nvim/init/treesitter.lua

" Use sane regex's when searching
" nnoremap / /\v
" vnoremap / /\v

