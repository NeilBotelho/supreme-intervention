 local ls = require "luasnip"
 local types = require "luasnip.util.types"


 -- Initial config {{{
 ls.config.set_config{
 	-- keep last snippet
 	-- allows to go back to last snippet and edit
 	history = true,

 	-- when to call updates.
 	-- for dynamic snippet updates as you type
 	updateevents = "TextChanged,TextChangedI",
 	-- Autosnippets
 	enable_autosnippets = true,
 	ext_opts= {
 		[types.choiceNode] = {
 			active = {
 				virt_text = { { "<--", "Error" } },
 			},
 		},
 	},
 }
 --}}}
 -- luasnip Maps{{{
 --jump next
 vim.keymap.set({"i","s"}, "<c-k>", function()
 	if ls.expand_or_jumpable() then
 		ls.expand_or_jump()
 	else
 		print("no expandable")
 	end
 end, {silent = true})

 -- jump previos
 vim.keymap.set({"i","s"}, "<c-j>", function()
 	if ls.jumpable() then
 		ls.jump(-1)
 	end
 end, {silent = true})

 -- selecting within a list of options
 -- Useful for choice nodes
 vim.keymap.set("i", "<c-l>", function()
 	if ls.choice_active() then
 		ls.change_choice(-1)
 	end
 end)

 --source luasnip file
 vim.keymap.set("n", "<leader><leader>s","<cmd>source ~/.config/nvim/lua/plugins/luasnip.lua <CR><cmd>source ~/.config/nvim/lua/plugins/snippets.lua <CR> :lua print('reloaded luasnip')<CR>")
 --}}}



