vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.0',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  use({
	  'ellisonleao/gruvbox.nvim',
	  as = 'gruvbox',
	  config = function()
		  vim.cmd('colorscheme gruvbox')
	  end
  })

  use {
  "folke/which-key.nvim",
  config = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 300
  end
}

  use('christoomey/vim-tmux-navigator')
  use('christoomey/vim-tmux-runner')
  use('editorconfig/editorconfig-vim')
  use('theprimeagen/harpoon')
  use('tpope/vim-fugitive')
  use('tpope/vim-surround')
  use('vim-test/vim-test')

  use {
      'nvim-tree/nvim-tree.lua',
      requires = {
        'nvim-tree/nvim-web-devicons',
      },
  }

  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use { 'tpope/vim-rails', ft = { 'ruby' } }

  use {
	  'VonHeikemen/lsp-zero.nvim',
	  requires = {
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},
		  {'williamboman/mason.nvim'},
		  {'williamboman/mason-lspconfig.nvim'},

		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},
		  {'hrsh7th/cmp-buffer'},
		  {'hrsh7th/cmp-path'},
		  {'saadparwaiz1/cmp_luasnip'},
		  {'hrsh7th/cmp-nvim-lsp'},
		  {'hrsh7th/cmp-nvim-lua'},

		  -- Snippets
		  {'L3MON4D3/LuaSnip'},
		  {'rafamadriz/friendly-snippets'},
	  }
  }

end)

