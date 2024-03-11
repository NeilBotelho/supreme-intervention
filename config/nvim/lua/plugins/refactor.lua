require('refactoring').setup({
    prompt_func_return_type = {
        go = false,
        java = false,

        cpp = false,
        c = false,
        h = false,
        hpp = false,
        cxx = false,
    },
    prompt_func_param_type = {
        go = false,
        java = false,

        cpp = false,
        c = false,
        h = false,
        hpp = false,
        cxx = false,
    },
    printf_statements = {},
    print_var_statements = {},
})

-- Remaps for the refactoring operations currently offered by the plugin
local opts={noremap = true, silent = true, expr = false}
vim.keymap.set("v", "<leader>re", " <Esc><Cmd>lua require('refactoring').refactor('Extract Function')<CR>", opts)
vim.keymap.set("v", "<leader>rf", [[ <Esc><Cmd>lua require('refactoring').refactor('Extract Function To File')<CR>]], opts)
vim.keymap.set("v", "<leader>rv", [[ <Esc><Cmd>lua require('refactoring').refactor('Extract Variable')<CR>]], opts)
vim.keymap.set("v", "<leader>ri", [[ <Esc><Cmd>lua require('refactoring').refactor('Inline Variable')<CR>]], opts)

-- Inline variable can also pick up the identifier currently under the cursor without visual mode
vim.keymap.set("n", "<leader>ri", [[ <Cmd>lua require('refactoring').refactor('Inline Variable')<CR>]], opts)

-- prompt for a refactor to apply when the remap is triggered
vim.keymap.set(
	"v",
	"<leader>rr",
	"<Esc><cmd>lua require('telescope').extensions.refactoring.refactors()<CR>",
		opts
)

opt={ noremap = true }
-- You can also use below = true here to to change the position of the printf
-- statement (or set two remaps for either one). This remap must be made in normal mode.
vim.keymap.set(
	"n",
	"<leader>rp",
	":lua require('refactoring').debug.printf({below = false})<CR>",
	opt	
)



-- Print var
-- Remap in normal mode and passing { normal = true } will automatically find the variable under the cursor and print it
vim.keymap.set("n", "<leader>rv", ":lua require('refactoring').debug.print_var({ normal = true })<CR>", opt)
-- Remap in visual mode will print whatever is in the visual selection
vim.keymap.set("v", "<leader>rv", ":lua require('refactoring').debug.print_var({})<CR>", opt)
-- Cleanup function: this remap should be made in normal mode
vim.keymap.set("n", "<leader>rc", ":lua require('refactoring').debug.cleanup({})<CR>", opt)

