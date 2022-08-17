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
	function(use)
		-- Packer can manage itself
		use 'wbthomason/packer.nvim'
		use {'ericbn/vim-relativize'}
		use {'joshdick/onedark.vim'}
		use {'kshenoy/vim-signature'}
		use {'kyazdani42/nvim-web-devicons'}
		use {'lervag/vimtex'}
		use {'mhartington/oceanic-next'}
		-- use {'morhetz/gruvbox'}
		use {'simnalamburt/vim-mundo'}
		use {'tpope/vim-fugitive'}
		use {'tpope/vim-vinegar'}
		use {'jdhao/better-escape.vim'}
		use {'numToStr/Comment.nvim'}
		use {'kyazdani42/nvim-tree.lua'}
		use {'norcalli/nvim-colorizer.lua'}
		use {'pechorin/any-jump.vim'}
		use {'feline-nvim/feline.nvim'}
		use {'justinmk/vim-syntax-extra'}
		use {'godlygeek/tabular'}
		use {'szw/vim-maximizer'}
		use {'dense-analysis/ale'}
		-- Trial{{{
		use {'sbdchd/neoformat'}
		-- }}}
		--Telescope{{{
		use {'nvim-lua/popup.nvim'}
		use {'nvim-lua/plenary.nvim'}
		use {'nvim-telescope/telescope.nvim'}
		use {'nvim-telescope/telescope-fzy-native.nvim'}
		--}}}
		--	Quarantine Completion{{{
		-- use {'vim-airline/vim-airline'}
		use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
		use {'nvim-treesitter/playground'}
		use {'neovim/nvim-lspconfig'}
		use {'hrsh7th/cmp-nvim-lsp'}
		use {'hrsh7th/cmp-nvim-lua'}
		use {'hrsh7th/cmp-buffer'}
		use {'hrsh7th/cmp-path'}
		use {'hrsh7th/nvim-cmp'}
		use {'L3MON4D3/LuaSnip'}
		use {'saadparwaiz1/cmp_luasnip'}
		use {'onsails/lspkind-nvim'}

		--}}}
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
