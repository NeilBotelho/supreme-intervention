local key_opts = { noremap = true, silent = true, expr = false }

local opts = {
	languages = {
		python = {
			template = {
				annotation_convention = "reST",
			}
		}
	},

}
return {
	{
		"danymat/neogen",
		dependencies = "nvim-treesitter/nvim-treesitter",
		lazy = true,
		config=function()
			vim.keymap.set("n", "<leader>df", 	require'neogen'.generate({type='class'}),key_opts)
			vim.keymap.set("n", "<leader>df", 	require'neogen'.generate({type='func'}),key_opts)
		end,
		version = "*", -- Follow only stable versions
		--- 
		opts = opts
	},

}
