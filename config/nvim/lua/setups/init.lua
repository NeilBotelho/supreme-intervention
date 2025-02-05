return {
	{
		"folke/trouble.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
	},
	'navarasu/onedark.nvim',
	'mhartington/oceanic-next',
	--Functional
	"simnalamburt/vim-mundo",
	'tpope/vim-fugitive',
	'tpope/vim-vinegar',
	'jdhao/better-escape.vim',
	"tpope/vim-surround",
	'ericbn/vim-relativize',

	-- LSP
	'neovim/nvim-lspconfig',
	{
		"amrbashir/nvim-docs-view",
		lazy = true,
		cmd = "DocsViewToggle",
		opts = {
			position = "right",
			width = 60
		}
	},
	{
		'mrcjkb/rustaceanvim',
		version = '^4', -- Recommended
		ft = { 'rust' },
	},
	{
		'mfussenegger/nvim-dap',
		lazy = false,
	},
	-- {
	-- 	'rcarriga/nvim-dap-ui',
	-- 	lazy = false
	-- },
	-- 'theHamsta/nvim-dap-virtual-text',
	-- 'nvim-telescope/telescope-dap.nvim',
	-- 'mfussenegger/nvim-dap-python',
	-- 'nvim-neotest/nvim-nio',
}
