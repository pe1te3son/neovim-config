-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.5',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }

  use {
    'sainnhe/sonokai',
    as = 'sonokai',
  }

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
    branch = 'v1.x',
    requires = {
      -- LSP Support
      { 'neovim/nvim-lspconfig' },
      { 'williamboman/mason.nvim' },
      { 'williamboman/mason-lspconfig.nvim' },

      -- Autocompletion
      { 'hrsh7th/nvim-cmp' },
      { 'hrsh7th/cmp-buffer' },
      { 'hrsh7th/cmp-path' },
      { 'saadparwaiz1/cmp_luasnip' },
      { 'hrsh7th/cmp-nvim-lsp' },
      { 'hrsh7th/cmp-nvim-lua' },

      -- Snippets
      { 'L3MON4D3/LuaSnip' },
      { 'rafamadriz/friendly-snippets' },
    }
  }

  use { "kelly-lin/ranger.nvim" }

  use { "tpope/vim-surround" }

  use { "terrortylor/nvim-comment" }
  use("github/copilot.vim")
  use("nvim-lua/plenary.nvim")
  use("nvim-pack/nvim-spectre")

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
end)
