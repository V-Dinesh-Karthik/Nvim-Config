vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.1',
	  -- or, branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }


  use({ "catppuccin/nvim", as = "catppuccin",
  config = function()
	  require('catppuccin').setup({
		  flavour = "mocha",
	  })
	  vim.cmd [[colorscheme catppuccin]]
  end
  })

  use ({
	  'nvim-treesitter/nvim-treesitter',
	  {run = ':TSUpdate'},
  })

  use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v1.x',
	  requires = {
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},             -- Required
		  {'williamboman/mason.nvim'},           -- Optional
		  {'williamboman/mason-lspconfig.nvim'}, -- Optional

    -- Autocompletion
    {'hrsh7th/nvim-cmp'},         -- Required
    {'hrsh7th/cmp-nvim-lsp'},     -- Required
    {'hrsh7th/cmp-buffer'},       -- Optional
    {'hrsh7th/cmp-path'},         -- Optional
    {'saadparwaiz1/cmp_luasnip'}, -- Optional
    {'hrsh7th/cmp-nvim-lua'},     -- Optional

    -- Snippets
    {'L3MON4D3/LuaSnip'},             -- Required
    {'rafamadriz/friendly-snippets'}, -- Optional
  }
}
 use 'mbbill/undotree'

 use 'tpope/vim-fugitive'

 use {
     'nvim-tree/nvim-tree.lua',
     requires = {
         'nvim-tree/nvim-web-devicons', -- optional
     },
 }


 use 'anuvyklack/hydra.nvim'

 use 'feline-nvim/feline.nvim'

 use {"akinsho/toggleterm.nvim", tag = '*', config = function()
     require("toggleterm").setup()
 end}

 use {'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons'}

 use {
     'lewis6991/gitsigns.nvim',
     config = function()
         require('gitsigns').setup()
     end
 }
 use "lukas-reineke/indent-blankline.nvim" 

 use "onsails/lspkind.nvim"

 use 'mfussenegger/nvim-jdtls' 

 use {
     "windwp/nvim-autopairs",
     config = function() require("nvim-autopairs").setup {} end
 }

end)
