return {
	{
		"folke/trouble.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
	},
	{
		'mrcjkb/rustaceanvim',
		version = '^4', -- Recommended
		ft = { 'rust' },
	},
	-- Fluff
	'norcalli/nvim-colorizer.lua',
	-- Niceties
	{
		'nvim-lualine/lualine.nvim',
		dependencies = 'nvim-tree/nvim-web-devicons'
	},
	"lukas-reineke/indent-blankline.nvim",
	main = "ibl",
	opts = {},
	'navarasu/onedark.nvim',
	'mhartington/oceanic-next',
	--Functional
	{
		"ThePrimeagen/harpoon",
		branch = "harpoon2",
		dependencies = "nvim-lua/plenary.nvim",
	},
	{
		"danymat/neogen",
		dependencies = "nvim-treesitter/nvim-treesitter",
		config = true,
		lazy = true,
		version = "*" -- Follow only stable versions
	},
	"lewis6991/gitsigns.nvim",
	'ThePrimeagen/git-worktree.nvim',
	"numToStr/FTerm.nvim",
	{
		"folke/todo-comments.nvim",
		dependencies = "nvim-lua/plenary.nvim"
	},
	"simnalamburt/vim-mundo",

	'tpope/vim-fugitive',
	'tpope/vim-vinegar',
	'jdhao/better-escape.vim',
	'numToStr/Comment.nvim',
	'kyazdani42/nvim-tree.lua',
	"tpope/vim-surround",
	'ericbn/vim-relativize',
	-- Language specific
	'lervag/vimtex',

	-- LSP
	'nvim-treesitter/nvim-treesitter',
	'neovim/nvim-lspconfig',
	'stevearc/aerial.nvim',
	{
		"amrbashir/nvim-docs-view",
		lazy = true,
		cmd = "DocsViewToggle",
		opts = {
			position = "right",
			width = 60
		}
	},

	-- Completion
	-- Telescope {{{
	'nvim-lua/popup.nvim',
	'nvim-lua/plenary.nvim',
	'nvim-telescope/telescope.nvim',
	'nvim-telescope/telescope-fzy-native.nvim',
	-- }}}
	--DAP{{{
	'mfussenegger/nvim-dap',
	'rcarriga/nvim-dap-ui',
	'theHamsta/nvim-dap-virtual-text',
	'nvim-telescope/telescope-dap.nvim',
	'mfussenegger/nvim-dap-python'
	--}}}

}
