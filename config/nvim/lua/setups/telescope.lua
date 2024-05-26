return {
	'nvim-lua/popup.nvim',
	'nvim-lua/plenary.nvim',
	'nvim-telescope/telescope-fzy-native.nvim',
	{
		'nvim-telescope/telescope.nvim',
		config = function()
			require('telescope').load_extension('fzy_native')
			require('telescope').setup {
				pickers = {
					find_files = {
						mappings = {
							n = {
								["cd"] = function(prompt_bufnr)
									local selection = require("telescope.actions.state").get_selected_entry()
									local dir = vim.fn.fnamemodify(selection.path, ":p:h")
									require("telescope.actions").close(prompt_bufnr)
									-- Depending on what you want put `cd`, `lcd`, `tcd`
									vim.cmd(string.format("silent lcd %s", dir))
								end
							}
						}
					},
				},
				defaults = {
					path_display = { "truncate" },

				},
			}
		end

	}
}
