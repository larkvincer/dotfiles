local packer = require('packer')

packer.startup(function(use)
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

  use "lukas-reineke/indent-blankline.nvim"

  -- LSP
  use 'neovim/nvim-lspconfig'
  use {
    "williamboman/mason.nvim",
    run = ":MasonUpdate", -- :MasonUpdate updates registry contents,
    config = function()
      require("mason").setup()
    end
  }
  use "b0o/schemastore.nvim"
  use 'jose-elias-alvarez/null-ls.nvim'
  use 'glepnir/lspsaga.nvim'
  use 'onsails/lspkind.nvim'
  use {
    'folke/trouble.nvim',
    requires = "kyazdani42/nvim-web-devicons",
    config = function()
      require("trouble").setup {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      }
    end
  }

  -- Autocomplete
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'L3MON4D3/LuaSnip'
  use 'saadparwaiz1/cmp_luasnip'

  -- Commenter
  use 'terrortylor/nvim-comment'

  -- Git integration
  use 'lewis6991/gitsigns.nvim'
  use { 'sindrets/diffview.nvim', requires = 'nvim-lua/plenary.nvim' }

  use {
    "zbirenbaum/copilot.lua",
    -- cmd = "Copilot",
    -- event = "InsertEnter",
    config = function()
      require("copilot").setup({
        suggestion = { enabled = false },
        panel = { enabled = false },
      })
    end,
  }
  use {
    "zbirenbaum/copilot-cmp",
    after = { "copilot.lua" },
    config = function()
      require("copilot_cmp").setup()
    end
  }

  -- Debugger
  use 'mfussenegger/nvim-dap'
  use { "rcarriga/nvim-dap-ui", requires = { "mfussenegger/nvim-dap" } }
  use { "mxsdev/nvim-dap-vscode-js", requires = { "mfussenegger/nvim-dap" } }
  use {
    "microsoft/vscode-js-debug",
    requires = { "mfussenegger/nvim-dap" },
    opt      = true,
    run      = "npm install --legacy-peer-deps && npm run compile"
  }

  -- Align text by token
  use 'Vonr/align.nvim'
end
)
