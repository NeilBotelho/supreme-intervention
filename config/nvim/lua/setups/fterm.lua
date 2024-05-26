local opts = {
	border     = 'double',
	dimensions = {
		height = 0.9,
		width = 0.9,
	},
}

return {
	{
		"numToStr/FTerm.nvim",
		config = function()
			require 'FTerm'.setup({
				-- border     = {  "/", "-", "\\", "|" },
				border="single",
				dimensions = {
					height = 0.9,
					width = 0.9,
				},
			})
			local fterm = require("FTerm")

			local gitui = fterm:new({
				ft = 'fterm_gitui', -- You can also override the default filetype, if you want
				cmd = "gitui",
				dimensions = {
					height = 0.9,
					width = 0.9
				}
			})

			-- Use this to toggle gitui in a floating terminal
			vim.keymap.set('n', '<A-g>', function()
				gitui:toggle()
			end)
			-- Example keybindings
			vim.keymap.set('n', '<M-i>', '<CMD>lua require("FTerm").toggle()<CR>')
			vim.keymap.set('t', '<M-i>', '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>')
		end,


	}
}
