"pyright".setup {
 on_attach=require'completion'.on_attach,
 flags = {
	 debounce_text_changes = 150,
 }

-- vim.lsp.omnifunc
local map = function(type, key, value)
	vim.api.nvim_buf_set_keymap(0,type,key,value,{noremap = true, silent = true});
end
map('n','<leader>af','<cmd>lua vim.lsp.buf.code_action()<CR>')
local function custom_codeAction_callback(_, _, action)
	print(vim.inspect(action))
end
vim.lsp.callbacks['textDocument/codeAction'] = custom_codeAction_callback

