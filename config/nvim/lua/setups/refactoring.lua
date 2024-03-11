local opts = { noremap = true, silent = true, expr = false }
return {
	{
		"ThePrimeagen/refactoring.nvim",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-treesitter/nvim-treesitter",
		},
		lazy = true,
		init=function() require("telescope").load_extension("refactoring") end,
		keys = {
			{ "<leader>re", " <Esc><Cmd>lua require('refactoring').refactor('Extract Function')<CR>", mode = "v" , opts},
			{ "<leader>rf", " <Esc><Cmd>lua require('refactoring').refactor('Extract Function To File')<CR>", mode = "v" , opts},
			{ "<leader>rv", " <Esc><Cmd>lua require('refactoring').refactor('Extract Variable')<CR>", mode = "v" , opts},
			{ "<leader>ri", " <Esc><Cmd>lua require('refactoring').refactor('Inline Variable')<CR>", mode = "v" , opts},
			{ "<leader>ri", " <Esc><Cmd>lua require('refactoring').refactor('Inline Variable')<CR>", opts},
			{ "<leader>rr", function() require('telescope').extensions.refactoring.refactors() end, mode = "v" , opts},
			{ "<leader>rp", function() require('refactoring').debug.printf() end, opts},
			{ "<leader>rp", function() require('refactoring').debug.printf_var() end, mode="v",opts},
			{ "<leader>rc", function() require('refactoring').debug.printf() end, opts},
		}
	}
}
