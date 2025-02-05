local noremap = function(mode, lhs, rhs, silent)
	if silent == nil then
		silent = true
	end
	vim.keymap.set(mode, lhs, rhs, { noremap = true, silent = silent })
end


return {
	{
		"ThePrimeagen/harpoon",
		branch = "harpoon2",
		dependencies = "nvim-lua/plenary.nvim",
		--- 
		config = function()
			local harpoon = require("harpoon")
			harpoon:setup()
			local conf = require("telescope.config").values
			--- i
			---@param harpoon_files 
			local function toggle_telescope(harpoon_files)
				local file_paths = {}
				for _, item in ipairs(harpoon_files.items) do
					table.insert(file_paths, item.value)
				end

				require("telescope.pickers").new({}, {
					prompt_title = "Harpoon",
					finder = require("telescope.finders").new_table({
						results = file_paths,
					}),
					previewer = conf.file_previewer({}),
					sorter = conf.generic_sorter({}),
				}):find()
			end
			noremap('n', '<leader>hpq', function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)
			noremap('n', '<leader>hpa', function() harpoon:list():add() end)
			noremap('n', '<leader>hpc', function() harpoon:list():clear() end)
			vim.keymap.set("n", "<leader>hpt", function() toggle_telescope(harpoon:list()) end,
				{ desc = "Open harpoon window" })


			-- basic telescope configuration
		end
	},

}
