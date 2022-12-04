local packer = require('packer')

-- " Debugger
-- Plug 'mfussenegger/nvim-dap'
-- Plug 'rcarriga/nvim-dap-ui'
-- " Formatter
-- Plug 'mhartington/formatter.nvim'
-- " Commenter
-- Plug 'terrortylor/nvim-comment'
-- " LSP
-- Plug 'williamboman/nvim-lsp-installer'
-- Plug 'neovim/nvim-lspconfig'
-- Plug 'L3MON4D3/LuaSnip'
-- Plug 'glepnir/lspsaga.nvim'
-- Plug 'folke/trouble.nvim'
-- Plug 'folke/lsp-colors.nvim'
-- Plug 'hrsh7th/nvim-cmp'
-- Plug 'hrsh7th/cmp-nvim-lsp'
-- Plug 'saadparwaiz1/cmp_luasnip'
-- Plug 'hrsh7th/cmp-buffer'
-- Plug 'hrsh7th/cmp-path'
-- Plug 'hrsh7th/cmp-cmdline'
-- Plug 'jose-elias-alvarez/null-ls.nvim'
-- " Auto buffer reload if file changed
-- Plug 'djoshea/vim-autoread'
-- " git integration
-- Plug 'tpope/vim-fugitive'
-- Plug 'airblade/vim-gitgutter'
-- Plug 'rhysd/git-messenger.vim'


packer.startup(function (use)
  use 'wbthomason/packer.nvim'

  use 'projekt0n/github-nvim-theme'

  use 'kyazdani42/nvim-tree.lua'

  -- Telescope setup
  use 'nvim-lua/popup.nvim'
  use 'nvim-lua/plenary.nvim'
  use 'nvim-telescope/telescope.nvim'

  -- Close buffers, human way
  use 'Asheq/close-buffers.vim'

  -- Surround with stuff
  use 'tpope/vim-surround'
  use 'tpope/vim-repeat'

  -- Lualine
  use 'hoob3rt/lualine.nvim'
  use 'akinsho/bufferline.nvim'
  use 'kyazdani42/nvim-web-devicons'

  -- Syntax highlight
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }

  -- LSP
  use 'neovim/nvim-lspconfig'
  use 'williamboman/nvim-lsp-installer'
  use 'glepnir/lspsaga.nvim'
-- Plug 'folke/trouble.nvim'
-- Plug 'folke/lsp-colors.nvim'
-- Plug 'saadparwaiz1/cmp_luasnip'
-- Plug 'jose-elias-alvarez/null-ls.nvim'

  -- Autocomplete
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'

  -- Commenter
  use 'terrortylor/nvim-comment'
end
)

