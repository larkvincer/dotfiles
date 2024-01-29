local packer = require('packer')

packer.startup(function(use)
  use 'wbthomason/packer.nvim'

  use 'shaunsingh/nord.nvim'

  use 'kyazdani42/nvim-tree.lua'
  -- Telescope setup
  use 'nvim-lua/popup.nvim'
  use 'nvim-lua/plenary.nvim'
  use 'nvim-telescope/telescope.nvim'

  -- Surround with stuff
  use({
    'kylechui/nvim-surround',
    tag = "*",
    config = function()
      require('nvim-surround').setup({ })
    end
  })

  -- UI bars
  use 'hoob3rt/lualine.nvim'
  use 'akinsho/bufferline.nvim'
  use 'kyazdani42/nvim-web-devicons'

  -- Syntax highlight
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }
  use "lukas-reineke/indent-blankline.nvim"

  -- Code intelligence
  use 'neovim/nvim-lspconfig'
  use {
    "williamboman/mason.nvim",
    run = ":MasonUpdate",
    config = function()
      require("mason").setup()
    end
  }
  use "b0o/schemastore.nvim"
  use 'glepnir/lspsaga.nvim'
  use 'onsails/lspkind.nvim'
  use {
    'folke/trouble.nvim',
    requires = "kyazdani42/nvim-web-devicons",
    config = function()
    require("trouble").setup { }
    end
  }
  use("stevearc/conform.nvim")

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
  use {
    'lewis6991/gitsigns.nvim',
    config = function()
      vim.cmd "Gitsigns toggle_current_line_blame"
    end
  }
  use { 'sindrets/diffview.nvim', requires = 'nvim-lua/plenary.nvim' }

  -- COPILOT
  -- use {
  --   "zbirenbaum/copilot.lua",
  --   -- cmd = "Copilot",
  --   -- event = "InsertEnter",
  --   config = function()
  --     require("copilot").setup({
  --       suggestion = { enabled = false },
  --       panel = { enabled = false },
  --     })
  --   end,
  -- }
  -- use {
  --   "zbirenbaum/copilot-cmp",
  --   after = { "copilot.lua" },
  --   config = function()
  --     require("copilot_cmp").setup()
  --   end
  -- }

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
