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
  use('github/copilot.vim')
end)
