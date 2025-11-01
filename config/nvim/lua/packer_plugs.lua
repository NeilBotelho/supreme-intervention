local packer=require"packer"
-- Have packer use a popup window
packer.init({
    display = {
      open_fn = function()
        return require('packer.util').float({ border = 'single' })
      end
    }
  }
)
-- Packer Plugins{{{
return packer.startup({
	auto_clean = true, -- During sync(), remove unused plugins
  compile_on_sync = true, -- During sync(), run packer.compile()
	display = {
    non_interactive = false, -- If true, disable display windows for all operations
    compact = false
	},
	function(use)
		-- Packer can manage itself
		use {'wbthomason/packer.nvim'}
		use {'epwalsh/obsidian.nvim',
			tag = "*",  -- recommended, use latest release instead of latest commit
			requires = {"nvim-lua/plenary.nvim"}
		}
		use {'airblade/vim-gitgutter'}
		use {'jamestthompson3/nvim-remote-containers'}
		use { 'ThePrimeagen/refactoring.nvim' }
		use {'ThePrimeagen/harpoon'}
		use { 'lukas-reineke/indent-blankline.nvim' }
		use {'ericbn/vim-relativize'}
		use {'navarasu/onedark.nvim'}
		use 'drewtempelmeyer/palenight.vim'
		use {'kshenoy/vim-signature'}
		use {'kyazdani42/nvim-web-devicons'}
		use {'lervag/vimtex'}
		use {'mhartington/oceanic-next'}
		use { "danymat/neogen", tag = "*" }

		--DAP{{{
		use 'ThePrimeagen/git-worktree.nvim'
		use {'mfussenegger/nvim-dap'}
		use {'rcarriga/nvim-dap-ui'}
		use {'theHamsta/nvim-dap-virtual-text'}
		use {'nvim-telescope/telescope-dap.nvim'}
		use {'mfussenegger/nvim-dap-python'}
 		--}}}

		-- Trial {{{
		use { 'numToStr/FTerm.nvim' }
		use { 'tpope/vim-surround' }
		use { 'vimwiki/vimwiki' }
		use { "folke/todo-comments.nvim" }

		use {
				"folke/trouble.nvim",
				requires = "nvim-tree/nvim-web-devicons",
				config = function() require("trouble").setup {} end
			}

		-- }}}
		use {'simnalamburt/vim-mundo'}
		use {'tpope/vim-fugitive'}
		use {'tpope/vim-vinegar'}
		use {'jdhao/better-escape.vim'}
		use {'numToStr/Comment.nvim'}
		use {'kyazdani42/nvim-tree.lua'}
		use {'feline-nvim/feline.nvim'}
		use {
  'nvim-lualine/lualine.nvim',
  requires = { 'nvim-tree/nvim-web-devicons', opt = true }
}
		use {'justinmk/vim-syntax-extra'}
		use {'godlygeek/tabular'}
		--Telescope{{{
		use {'nvim-lua/popup.nvim'}
		use {'nvim-lua/plenary.nvim'}
		use {'nvim-telescope/telescope.nvim'}
		use {'nvim-telescope/telescope-fzy-native.nvim'}
		--}}}
		-- use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
		-- use {'nvim-treesitter/playground'}
		use {'neovim/nvim-lspconfig'}
		use {'hrsh7th/cmp-nvim-lsp'}
		use {'hrsh7th/cmp-buffer'}
		use {'hrsh7th/cmp-path'}
		use {'hrsh7th/cmp-cmdline'}
		use {'saadparwaiz1/cmp_luasnip'}
		use {'hrsh7th/nvim-cmp'}
		use {'onsails/lspkind-nvim'}
		use {'stevearc/aerial.nvim'}
		use {'norcalli/nvim-colorizer.lua'}
		use{'amrbashir/nvim-docs-view',
			opt = true,
			cmd = { "DocsViewToggle" },
		}
	use "rafamadriz/friendly-snippets"
	use "L3MON4D3/LuaSnip"
		-- use Archive {{{
		--NERDTree{{{
		-- use {'Xuyuanp/nerdtree-git-plugin'}
		-- use {'preservim/nerdtree'}
		-- use {'ryanoasis/vim-devicons'}
		-- use {'tiagofumo/vim-nerdtree-syntax-highlight'}
		--}}}
		-- use {'ap/vim-css-color'}
		-- use {'junegunn/fzf', { 'do': { -> fzf#install() } }
		-- use {'junegunn/fzf.vim'}
		-- use {'neoclide/coc.nvim', {'branch': 'release'}
		-- use {'sgur/vim-editorconfig' -- Might need later
		-- }}}
		-- Plugin Dev
	end,
	config = {
	  profile = {
			enable = true,
			threshold = 1 -- the amount in ms that a plugins load time must be over for it to be included in the profile
  	},
		display = {
			open_fn = require('packer.util').float,
		}
	}
}
)
--}}}
