vim.g.tex_flavor = 'latex'
vim.g.vimtex_view_general_viewer = 'zathura'
vim.g.vimtex_fold_manual = 1
vim.cmd([[
	let g:vimtex_quickfix_ignore_filters = [ 'Underfull \\hbox', 'Overfull \\hbox', ]
]])
