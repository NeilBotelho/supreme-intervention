return {
	{
		"L3MON4D3/LuaSnip",
		lazy = true,
		event = "InsertEnter",
		config = function()
			local ls = require("luasnip")
			vim.keymap.set({ "i","s" }, "<C-l>", function() ls.expand_or_jump() end, { silent = true })
			-- vim.keymap.set({ "i", "s" }, "<C-L>", function() ls.jump(1) end, { silent = true })
			
			vim.keymap.set({ "i", "s" }, "<C-J>", function() ls.jump(-1) end, { silent = true })
			vim.keymap.set({ "i", "s" }, "<C-E>", function()
				if ls.choice_active() then
					ls.change_choice(1)
				end
			end, { silent = true })
		end
	},
	{
		"rafamadriz/friendly-snippets",
		dependencies = { "L3MON4D3/LuaSnip" },
		lazy = true
	},
	{
		"saadparwaiz1/cmp_luasnip",
		config=function()
			require("luasnip.loaders.from_vscode").lazy_load()
		end,
		dependencies = { "L3MON4D3/LuaSnip" },
		event = "InsertEnter",
		lazy = true
	},

}
