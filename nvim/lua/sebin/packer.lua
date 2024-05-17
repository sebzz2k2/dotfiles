
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- packer 
	use 'wbthomason/packer.nvim'

	-- telescope
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.6',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

	--nord
	use({
		'shaunsingh/nord.nvim',
		as = 'nord',
		config = function()
			vim.cmd('colorscheme nord')
		end
	})

	-- treesitter
	use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

	-- harpoon
	use('theprimeagen/harpoon')

	--undotree
	use ('mbbill/undotree')

	-- git fugitive
	use('tpope/vim-fugitive')

	--lsp
	use {
		'neoclide/coc.nvim',
		branch = 'master',
		run = 'npm ci'
	}

	--copilot
	use('github/copilot.vim')

	--lua line
	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'nvim-tree/nvim-web-devicons', opt = true }
	}

	--delimit mate
	use 'Raimondi/delimitMate'

	-- wilder
	use {
		'gelguy/wilder.nvim',
	}
	-- ufo
	use {'kevinhwang91/nvim-ufo', requires = 'kevinhwang91/promise-async'}

	-- toggleterm
	use {
		'akinsho/toggleterm.nvim',
		tag = '*'
	}

	-- nvim-tree
	use {
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		requires = { 
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
			"MunifTanjim/nui.nvim",
			"3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
		}
	}

	-- git signs
	use {
		'lewis6991/gitsigns.nvim',
	}
end)
