-- Telescope
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
	defaults= {
		path_display = {"truncate"},

	},
 --    extensions = {
 --        fzy_native = {
 --            override_generic_sorter = false,
 --            override_file_sorter = true,
 --        }
 --    }
}
-- require('telescope').load_extension('fzy_native')
-- function live_grep_from_project_git_root()
-- 	local function is_git_repo()
-- 		vim.fn.system("git rev-parse --is-inside-work-tree")
--
-- 		return vim.v.shell_error == 0
-- 	end
--
-- 	local function get_git_root()
-- 		local dot_git_path = vim.fn.finddir(".git", ".;")
-- 		return vim.fn.fnamemodify(dot_git_path, ":h")
-- 	end
--
-- 	local opts = {}
--
-- 	if is_git_repo() then
-- 		opts = {
-- 			cwd = get_git_root(),
-- 		}
-- 	end
--
-- 	require("telescope.builtin").live_grep(opts)
-- end
-- function vim.find_files_from_project_git_root()
--   local function is_git_repo()
--     vim.fn.system("git rev-parse --is-inside-work-tree")
--     return vim.v.shell_error == 0
--   end
--   local function get_git_root()
--     local dot_git_path = vim.fn.finddir(".git", ".;")
--     return vim.fn.fnamemodify(dot_git_path, ":h")
--   end
--   local opts = {}
--   if is_git_repo() then
--     opts = {
--       cwd = get_git_root(),
--     }
--   end
--   require("telescope.builtin").find_files(opts)
-- end
