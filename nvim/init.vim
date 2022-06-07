" Specify a directory for plugins (for Neovim: ~/.local/share/nvim/plugged)
call plug#begin('~/.local/share/nvim/plugged')
" Themes
Plug 'projekt0n/github-nvim-theme'
Plug 'Mofiqul/dracula.nvim'
Plug 'shaunsingh/nord.nvim'

" Explorer
Plug 'kyazdani42/nvim-tree.lua'

" Draw colors on color hash
Plug 'lilydjwg/colorizer'

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

" LSP
Plug 'williamboman/nvim-lsp-installer'
Plug 'neovim/nvim-lspconfig'
Plug 'L3MON4D3/LuaSnip'
Plug 'glepnir/lspsaga.nvim'
Plug 'folke/trouble.nvim'
Plug 'folke/lsp-colors.nvim'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'jose-elias-alvarez/null-ls.nvim'

" Autocompletion engine
" Plug 'neoclide/coc.nvim', {'branch': 'release'}
"
" Brackets autocomplete
" Plug 'git://github.com/jiangmiao/auto-pairs.git'
" Auto buffer reload if file changed
Plug 'djoshea/vim-autoread'

" Lualine
Plug 'hoob3rt/lualine.nvim'
Plug 'akinsho/bufferline.nvim'
Plug 'kyazdani42/nvim-web-devicons'

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

source /Users/pavlokuziv/.config/nvim/init/keymaps.vim
source /Users/pavlokuziv/.config/nvim/init/airline.vim
source /Users/pavlokuziv/.config/nvim/init/devicons.vim
source /Users/pavlokuziv/.config/nvim/init/options.vim
luafile /Users/pavlokuziv/.config/nvim/init/treesitter.lua
luafile /Users/pavlokuziv/.config/nvim/init/lualine.lua
luafile /Users/pavlokuziv/.config/nvim/init/bufferline.lua
luafile /Users/pavlokuziv/.config/nvim/init/nvimtree.lua
luafile /Users/pavlokuziv/.config/nvim/init/lsp.lua
luafile /Users/pavlokuziv/.config/nvim/init/telescope.lua

" Use sane regex's when searching
" nnoremap / /\v
" vnoremap / /\v

