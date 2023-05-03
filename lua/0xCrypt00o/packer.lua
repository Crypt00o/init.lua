vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	-- Telescope Multi Purpose Plugin
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.1',
		-- or                            , branch = '0.1.x',
		requires = { { 'nvim-lua/plenary.nvim' } }
	}



	-- Telescope File Browser Addon Plug
	use {
		"nvim-telescope/telescope-file-browser.nvim",
		requires = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" }
	}

	-- My Fav Theme
	use {
		"catppuccin/nvim",
		tag = 'v0.2.4',
		as = "catppuccin",
		--	  config = function() vim.cmd('colorscheme  catppuccin') end
	}
	-- Rose Pine Theme
	use {
		'rose-pine/neovim',
		as = 'rose-pine',
		config = function()
			-- vim.cmd('colorscheme rose-pine')
		end
	}
	-- TreeSitter Plug

	use { 'nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' } }

	-- Treeitter PlayGround Plug

	use { 'nvim-treesitter/playground' }

	-- Harpoon for Switching before many buffers easily and quickly

	use { "theprimeagen/harpoon",
		requires = { "nvim-lua/plenary.nvim" }
	}


	-- AirLine Plug

	use { 'vim-airline/vim-airline' }
	-- use {'vim-airline/vim-airline-themes'}

	-- Tagline Plug
	use { 'romgrk/barbar.nvim', requires = {
		'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
		'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
	} }
	-- Terminal Plug

	use { "tc50cal/vim-terminal" }


	--
	use {
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v2.x",
		requires = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
			"MunifTanjim/nui.nvim",
		}
	}


	-- Lsp Zero Plug , For AutoComplete , Lint , Work With Languages Server

	use {
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v2.x',
		requires = {
			-- LSP Support
			{ 'neovim/nvim-lspconfig' }, -- Required
			{
				-- Optional
				'williamboman/mason.nvim',
				run = function()
					pcall(vim.cmd, 'MasonUpdate')
				end,
			},
			{ 'williamboman/mason-lspconfig.nvim' }, -- Optional

			-- Autocompletion
			{ 'hrsh7th/nvim-cmp' }, -- Required
			{ 'hrsh7th/cmp-nvim-lsp' }, -- Required
			{ 'L3MON4D3/LuaSnip' }, -- Required
		}
	}

	-- Git Plug
	use { "tpope/vim-fugitive" }

	-- for Discord Presence
	use { 'andweeb/presence.nvim' }
	  use { 'junegunn/fzf.vim', requires ={ 'junegunn/fzf' }   }

end)
