require("neogen").setup({
	    languages = {
        python = {
            template = {
                annotation_convention = "reST",
                }
						}
        },
})
local opts = { noremap = true, silent = true }
local function clsAnnotation()
	require'neogen'.generate({type='class'})
end
local function funcAnnotation()
	require'neogen'.generate({type='func'})
end
vim.keymap.set("n", "<leader>df", funcAnnotation,opt)
vim.keymap.set("n", "<leader>dc", clsAnnotation, opts)
