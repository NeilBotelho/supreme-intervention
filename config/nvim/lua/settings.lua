-- Global variable declaration
vim.opt.termguicolors=false
vim.g.cache_dir="/tmp/vim_cache/"
vim.opt.directory=vim.g.cache_dir.."swp"
-- Folding

-- vim.cmd([[
--
-- set foldmethod=expr
-- set foldexpr=nvim_treesitter#foldexpr()
-- augroup folding
-- 	 au!
--     autocmd BufNewFile,BufRead * set foldmethod=expr
--     autocmd BufNewFile html set foldmethod=expr
-- 		au FileType sh let g:sh_fold_enabled=5
-- 		au FileType sh let g:is_bash=1
-- 		au FileType sh set foldmethod=syntax
--     autocmd BufNewFile,BufRead *.tex setlocal foldmethod=expr
-- 		autocmd FileType tex nnoremap setlocal foldmethod=expr
-- 		autocmd FileType tex nnoremap setlocal foldexpr=vimtex#fold#level(v:lnum)
-- 		autocmd FileType tex nnoremap setlocal foldtext=vimtex#fold#text()
--     autocmd BufNewFile,BufRead *.lua setlocal foldmethod=marker
--     autocmd BufNewFile,BufRead functions setlocal foldmethod=marker
--     autocmd BufNewFile,BufRead functions setlocal foldmethod=marker
--     autocmd BufNewFile,BufRead aliases setlocal foldmethod=marker
--     autocmd BufNewFile,BufRead *.vim setlocal foldmethod=marker
-- augroup END
-- ]])


-- Mouse settings
vim.opt.mouse="a"
vim.opt.cursorline=true



-- Syntax settings and wrap scan
vim.opt.wrapscan=true
vim.cmd([[
syntax on
syntax enable
set wrapscan
set shortmess="<Enter>"
set softtabstop=0 noexpandtab
set nrformats+=alpha
" Disable auto comment insertion
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
]])
vim.opt.clipboard="unnamedplus"
vim.opt.number=true
vim.opt.errorbells=false
vim.opt.tabstop=2
vim.opt.shiftwidth=2
vim.opt.smartindent=true
vim.opt.backup=false
-- vim.opt.undodir="/home/neil/.local/share/nvim/undodir"
vim.opt.undodir=vim.g.cache_dir.."vim_undo_dir"
vim.opt.undofile=true
vim.opt.incsearch=true
vim.opt.colorcolumn="80"
vim.opt.backspace="indent,eol,start"


-- Colorscheme
-- Lua
require('onedark').setup  {
    -- Main options --
    style = 'darker', -- Default theme style. Choose between 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer' and 'light'
    transparent = false,  -- Show/hide background
    term_colors = true, -- Change terminal color as per the selected theme style
    ending_tildes = false, -- Show the end-of-buffer tildes. By default they are hidden
    cmp_itemkind_reverse = false, -- reverse item kind highlights in cmp menu

    -- toggle theme style ---
    toggle_style_key = "<leader>cs", -- keybind to toggle theme style. Leave it nil to disable it, or set it to a string, for example "<leader>ts"
    toggle_style_list = {'dark', 'darker', 'cool', 'deep', 'warm', 'warmer', 'light'}, -- List of styles to toggle between

    -- Change code style ---
    -- Options are italic, bold, underline, none
    -- You can configure multiple style with comma seperated, For e.g., keywords = 'italic,bold'
    code_style = {
        comments = 'italic',
        keywords = 'none',
        functions = 'none',
        strings = 'none',
        variables = 'none'
    },

    -- Lualine options --
    lualine = {
        transparent = false, -- lualine center bar transparency
    },

    -- Custom Highlights --
    colors = {}, -- Override default colors
    highlights = {}, -- Override highlight groups

    -- Plugins Config --
    diagnostics = {
        darker = true, -- darker colors for diagnostic
        undercurl = true,   -- use undercurl instead of underline for diagnostics
        background = true,    -- use background color for virtual text
    },
}
require('onedark').load()
-- vim.cmd[[set background=dark]]
-- vim.cmd[[colorscheme palenight]]

