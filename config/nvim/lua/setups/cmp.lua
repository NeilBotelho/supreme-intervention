return {
	{ 'hrsh7th/cmp-nvim-lsp', lazy = true, event = "InsertEnter" },
	{ 'hrsh7th/cmp-buffer',   lazy = true, event = "InsertEnter" },
	{ 'hrsh7th/cmp-path',     lazy = true, event = "InsertEnter" },
	{ 'hrsh7th/cmp-cmdline',  lazy = true, event = "InsertEnter" },

	{
		'hrsh7th/nvim-cmp',

		config = function()
			local cmp = require 'cmp'

			vim.opt.completeopt = { "menu", "menuone", "noselect" }

			local function if_cmp_visible(fn, fallback)
				-- Check  if cmp is visible
				if cmp.visible() then
					fn()
				else
					fallback()
				end
			end

			-- Setup lspkind {{{
			local lspkind = require "lspkind"
			lspkind.init()
			-- }}}


			--Setup nvim-cmp.
			cmp.setup({
				-- Use luasnip for snippet management
				snippet = {
					expand = function(args)
						require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
					end,
				},
				-- nvim-cmp specific maps
				mapping = {
					['<C-b>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), { 'i', 'c' }),
					['<C-f>'] = cmp.mapping(cmp.mapping.scroll_docs(4), { 'i', 'c' }),
					['<C-space>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
					['<C-y>'] = cmp.config.disable, -- Specify `cmp.config.disable` if you want to remove the default `<C-y>` mapping.
					["<C-k>"] = function(fallback)
						if_cmp_visible(cmp.select_next_item, fallback)
					end,
					["<C-j>"] = function(fallback)
						if_cmp_visible(cmp.select_prev_item, fallback)
					end,
					['<C-e>'] = cmp.mapping({
						i = cmp.mapping.abort(),
						c = cmp.mapping.close(),
					}),
					['<C-Space>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.,
				},

				--Sources list
				sources = cmp.config.sources({
					{ name = 'nvim_lsp', keyword_length = 1 },
					{ name = 'nvim_lua', keyword_length = 2 },
					{ name = 'buffer',   keyword_length = 2, max_item_count = 5 },
					{ name = 'luasnip' },
					{ name = 'path', },
				}),

				formatting = {
					format = lspkind.cmp_format {
						with_text = true,
						menu = {
							buffer = "[buf]",
							nvim_lsp = "[LSP]",
							nvim_lua = "[api]",
							path = "[path]",
							luasnip = "[snip]",
						},
					},
				},
				experimental = {
					native_menu = false,
					ghost_text = true
				}

			})
		end,
		dependencies = {
			"saadparwaiz1/cmp_luasnip",
			"onsails/lspkind-nvim",
			'hrsh7th/cmp-nvim-lsp',
			'hrsh7th/cmp-buffer',
			'hrsh7th/cmp-path',
			'hrsh7th/cmp-cmdline',
		},
		lazy=true,
		event = "InsertEnter"
	}
}
