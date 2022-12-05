local packer = require('packer')

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
-- Plug 'jose-elias-alvarez/null-ls.nvim'

  -- Autocomplete
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'

  -- Commenter
  use 'terrortylor/nvim-comment'

  -- Git integration
  use 'lewis6991/gitsigns.nvim'
  use { 'sindrets/diffview.nvim', requires = 'nvim-lua/plenary.nvim' }

  -- Debugger
  use 'mfussenegger/nvim-dap'
  use { "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap"} }
  use { "mxsdev/nvim-dap-vscode-js", requires = {"mfussenegger/nvim-dap"} }
  use {
    "microsoft/vscode-js-debug",
    requires = {"mfussenegger/nvim-dap"},
    opt = true,
    run = "npm install --legacy-peer-deps && npm run compile"
  }
end
)

