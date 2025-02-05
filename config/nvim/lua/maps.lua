local noremap = function(mode, lhs, rhs, silent)
	if silent == nil then
		silent = true
	end
	vim.keymap.set(mode, lhs, rhs, { noremap = true, silent = silent })
end


MYVIMRC = "/home/neil/.config/nvim/init.lua"

vim.g.mapleader = " "
-- General
local function General()
	local nosilent = false
	noremap("n", "tn", ":set invnumber<CR>")
	noremap("n", "tb", ":SignatureToggleSigns<CR>")
	noremap("n", "tr", ":RelativizeToggle<CR>")
	noremap("n", "Ss", ":w<CR>:source %<CR>", nosilent)
	noremap("n", "So", ":w<CR>:source " .. MYVIMRC .. "<CR>", nosilent)
	noremap("n", "Sm", ":setlocal foldmethod=marker<CR>")
	noremap("n", "<Esc>", "<Esc><Esc>")
	noremap("n", "<leader>w", ":w<CR>", nosilent)
	noremap("n", "<leader>Q", ":q!<CR>")
	noremap("n", "<leader>q", ":q<CR>")
	noremap("n", "<leader>H", ":noh<CR>")
	noremap("v", "<leader>R", ":s/", nosilent) -- last arguement indicates not silent
	noremap("n", "<leader>R", ":%s/", nosilent)
	noremap("n", "Q", "<Nop> ")               --Disable Ex mode
	noremap("n", "ss", ":set spell<CR>")      --Disable Ex mode
	-- noremap("n", "ns", ":set nospell<CR>")    --Disable Ex mode
	noremap("n", "<leader>fn", ":echo expand('%')<CR>")
end

local function LazyMaps()
	local nosilent = false
	noremap("n", "Sp", ":Lazy install<CR>", nosilent)
	noremap("n", "Su", ":Lazy update<CR>", nosilent)
end
local function InsertMode()
	noremap("i", "jj", "<Esc>")
	-- noremap("i","<C-h>","<Esc>hi")
	-- noremap("i","<C-j>","<Esc>ji")
end

local function VisualMode()
	noremap("v", "K", ":m '<-2<CR>gv=gv")
	noremap("v", "J", ":m '>+1<CR>gv=gv")
end

local function Searching()
	noremap("n", "n", "nzzzv")
	noremap("n", "N", "Nzzzv")
end

local function TabNavigation()
	-- noremap("n","<C-k>","<C-PageUp>")
	-- noremap("n","<C-j>","<C-PageDown>")
	noremap("n", "<C-Tab>", ":tabn<CR>")
	-- noremap("n","<leader>wt","<C-w>T")
end


local function VimFugitive()
	noremap("n", "<leader>gs", ":G<CR><C-w>o")
	noremap("n", "<leader>gf", ":diffget //2<CR>")
	noremap("n", "<leader>gc", ":G commit<CR>")
	noremap("n", "<leader>gj", ":diffget //3<CR>")
end
local function Telescope()
	local telescope = require('telescope.builtin')
	noremap("n", "<leader>b", ":Telescope buffers<CR>")
	noremap("n", "<leader>c", ":Telescope colorscheme<CR>")
	noremap("n", "<leader>ff", ":Telescope find_files<CR>")
	-- noremap("n","<leader>o",":Telescope find_files<CR>")
	noremap("n", "<leader>gF", ":Telescope git_files<CR>")
	noremap("n", "<leader>F", ":Telescope live_grep<CR>")
	noremap("n", "<leader>ts", ":Telescope treesitter<CR>")
	noremap('n', '<leader>u',
		function() telescope.lsp_references({ fname_width = 3, show_line = false, trim_text = true }) end)
	noremap('n', 'gd', telescope.lsp_definitions)
	noremap('n', 'gi', telescope.lsp_implementations)
	noremap('n', '<leader>ds', telescope.lsp_document_symbols)
	noremap('n', '<leader>ws', telescope.lsp_workspace_symbols)
	noremap('n', 'gt', telescope.lsp_type_definitions)
	noremap('n', "<leader>ow", ":Telescope workspaces<CR>")
end

local function Hop()
	noremap("n", ",j", ":HopWord<CR>")
	noremap("n", ",l", ":HopLine<CR>")
end
local function Mundo()
	noremap("n", "tz", ":MundoToggle<CR>")
end

local function AnyJump()
	noremap("v", "<leader>u", ":AnyJumpVisual<CR>")
	-- Anyjump with word under cursor
	noremap("n", "<leader>u", ":AnyJump<CR>")
	-- open last closed search window again
	noremap("n", "<leader>al", ":AnyJumpLastResults<CR>")
end

local function Window()
	noremap("n", "<leader>v", "<C-w>v")
	noremap("n", "<leader>wo", "<C-w>o<CR>")
	noremap("n", "<leader>h", ":wincmd h<CR>")
	noremap("n", "<leader>j", ":wincmd j<CR>")
	noremap("n", "<leader>k", ":wincmd k<CR>")
	noremap("n", "<leader>l", ":wincmd l<CR>")
	noremap("n", "<leader>w=", ":resize +5<CR>")
	noremap("n", "<leader>w-", ":resize -5<CR>")
	noremap("n", "<leader>w<", ":vertical:resize -5<CR>")
	noremap("n", "<leader>w>", ":vertical:resize +5<CR>")
end

local function Buffers()
	noremap("n", "bn", ":bn<CR>")
	noremap("n", "bp", ":bp<CR>")
	noremap("n", ",s", ":split new<CR>:setlocal buftype=nofile<CR>:file scratch<CR>")
	noremap("n", ",S", ":vsplit new<CR>:setlocal buftype=nofile<CR>:file scratch<CR>") --scratch buffer
end
local function TerimnalToggle()
	noremap("n", ",t", ":call TerminalToggle()<cr>")
	noremap("t", ",t", "<C-\\><C-n>:call TerminalToggle()<cr>")
end

local function PresentationMode()
	noremap("n", "<leader>P", ":call PresentMode()<CR>")
end

local function Completion()
	-- noremap("i","<C-f>","<C-x><C-f>")
end

local function Maximizer()
	noremap("n", "<leader>m", ":MaximizerToggle<CR>")
end

local function Resizers()
	noremap("n", ",<", "15<C-w><")
	noremap("n", ",>", "15<C-w>>")
	noremap("n", ",-", "5<C-w>-")
	noremap("n", ",=", "5<C-w>+")
end

local function _NvimTree()
	local nvimtree = require "nvim-tree"
	noremap("n", "<leader>T", ":NvimTreeToggle<CR>")
end
-- local function _Trouble()
-- 	noremap("n", "<leader>dw", ":TroubleToggle workspace_diagnostics<CR>")
-- 	noremap("n", "<leader>dq", ":TroubleToggle quickfix<CR>")
-- 	noremap("n", "<leader>td", ":TodoTrouble<CR>")
-- end

local function Obsidian()
	noremap("n", "<leader>oo", ":e ~/.local/share/obsidian/vaults/personal/notes/home.md<CR>")
	noremap("n", "<leader>no", ":ObsidianQuickSwitch<CR>")
	noremap("n", "<leader>nn", ":ObsidianNew ")
end
local mappers = { InsertMode, VisualMode, Searching, TabNavigation, VimFugitive, Telescope, Mundo, Window, TerimnalToggle,
	PresentationMode, Completion, Hop, Buffers, Maximizer, Resizers, LazyMaps, _NvimTree, _Trouble, Obsidian, General }

for _, MapFn in pairs(mappers) do
	MapFn()
end
