-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.x',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }
  use { 'nvim-telescope/telescope-ui-select.nvim' }

  use {
    'sainnhe/sonokai',
    as = 'sonokai',
  }

  use { "rebelot/kanagawa.nvim" }
  use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
  -- use("nvim-treesitter/nvim-treesitter-context");
  use {
    "SmiteshP/nvim-navic",
    requires = "neovim/nvim-lspconfig"
  }
  use("mbbill/undotree")
  use("tpope/vim-fugitive")
  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v3.x',
  }

  use { 'neovim/nvim-lspconfig' }
  use { 'williamboman/mason.nvim' }
  use { 'williamboman/mason-lspconfig.nvim' }

  -- Autocompletion
  use { 'hrsh7th/nvim-cmp' }
  use { 'hrsh7th/cmp-buffer' }
  use { 'hrsh7th/cmp-path' }
  use { 'saadparwaiz1/cmp_luasnip' }
  use { 'hrsh7th/cmp-nvim-lsp' }
  use { 'hrsh7th/cmp-nvim-lua' }
  use { 'onsails/lspkind.nvim' }

  -- Snippets
  use { 'L3MON4D3/LuaSnip',
    dependencies = { 'rafamadriz/friendly-snippets' }
  }
  use { 'rafamadriz/friendly-snippets' }

  use { "j-hui/fidget.nvim" }

  use { "kelly-lin/ranger.nvim" }
  use { "tpope/vim-surround" }
  use { "terrortylor/nvim-comment" }
  use { "github/copilot.vim" }
  use { "nvim-lua/plenary.nvim" }
  use { "nvim-pack/nvim-spectre" }

  use { "folke/trouble.nvim" }

  use { "lewis6991/gitsigns.nvim" }

  use {
    "folke/which-key.nvim",
    config = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 300
    end
  }

  use { "windwp/nvim-autopairs" }
  use { 'nvim-lualine/lualine.nvim' }
  use { 'norcalli/nvim-colorizer.lua' }
  use {
    "CopilotC-Nvim/CopilotChat.nvim",
    branch = "canary",
    requires = {
      { "github/copilot.vim" },    -- or github/copilot.vim
      { "nvim-lua/plenary.nvim" }, -- for curl, log wrapper
    }
  }
  use {
    'phaazon/hop.nvim',
    branch = 'v2', -- optional but strongly recommended
  }
  use { "nvim-tree/nvim-web-devicons" }
  use {
    'mrcjkb/rustaceanvim',
    version = '^4', -- Recommended
  }
  use 'mfussenegger/nvim-dap'
  use 'nvim-neotest/nvim-nio'
  use { "rcarriga/nvim-dap-ui", requires = { "mfussenegger/nvim-dap", "nvim-neotest/nvim-nio" } }
end)
