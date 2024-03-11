local noremap=function (mode,lhs,rhs,silent)
	if silent==nil then
		silent=true
	end
	   vim.keymap.set(mode, lhs,rhs,{noremap=true, silent=silent})
end

local harpoon=require("harpoon")
harpoon:setup()
noremap('n','<leader>hpq',function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)
noremap('n','<leader>hpa',function() harpoon:list():append() end)
noremap('n','<leader>hpc',function() harpoon:list():clear() end)


-- basic telescope configuration
local conf = require("telescope.config").values
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

vim.keymap.set("n", "<leader>hpt", function() toggle_telescope(harpoon:list()) end,
    { desc = "Open harpoon window" })
