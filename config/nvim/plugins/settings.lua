-- Telescope
require('telescope').load_extension('fzy_native')
require('telescope').setup {
    extensions = {
        fzy_native = {
            override_generic_sorter = false,
            override_file_sorter = true,
        }
    }
}
require('telescope').load_extension('fzy_native')

-- Mundo
vim.g.mundo_width = 70
vim.g.mundo_preview_height = 15
vim.g.mundo_right = 1



-- Better escape
-- Set time interval to 200 ms
vim.g.better_escape_interval = 100
-- Use jj to escape insert mode.
vim.g.better_escape_shortcut = 'jj'




-- Anyjump
vim.g.any_jump_disable_default_keybindings = 1



-- Latex settings
vim.g.tex_flavor = 'latex'
vim.g.vimtex_view_general_viewer = 'zathura'




--NETRW
vim.g.netrw_keepdir=0
vim.g.netrw_banner=0
vim.g.netrw_altv=1
vim.g.netrw_liststyle=3
vim.g.netrw_browse_split=4
vim.g.netrw_usetab=1
--Disable netrw
vim.g.loaded_netrw       = 0 --Comment out for gx support
vim.g.loaded_netrwPlugin = 0


