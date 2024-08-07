local opts = {
	ensure_installed = { "rust", "latex", "json", "go", "python",
		"c", "cpp", "cmake", "java", "lua", "bash",
		"rst", "toml", "typescript", "html", "css",
		"javascript" },       -- one of "all", "maintained" (parsers with maintainers), or a list of languages

	highlight = {
		enable = true, -- false will disable the whole extension
	},
	incremental_selection = {
		enable = true,
		keymaps = {
			init_selection = "gnn",
			node_incremental = "grn",
			scope_incremental = "grc",
			node_decremental = "grm",
		},
	},
	indent = {
		enable = true
	},
	playground = {
		enable = true,
		disable = {},
		updatetime = 25,         -- Debounced time for highlighting nodes in the playground from source code
		persist_queries = false, -- Whether the query persists across vim sessions
		keybindings = {

			toggle_query_editor = 'o',
			toggle_hl_groups = 'i',
			toggle_injected_languages = 't',
			toggle_anonymous_nodes = 'a',
			toggle_language_display = 'I',
			focus_language = 'f',
			unfocus_language = 'F',
			update = 'R',
			goto_node = '<cr>',
			show_help = '?',
		},
	}


}
return {
	{
		'nvim-treesitter/nvim-treesitter',
		config=function()

	require'nvim-treesitter.configs'.setup(opts)
		end,
		priority=1,

	}
}
