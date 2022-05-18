--Runners
--
local create_autocmd=vim.api.nvim_create_autocmd
if create_autocmd==nil then
	vim.cmd[[
	augroup runners
		autocmd!
		autocmd FileType * nnoremap <buffer> <leader>r :w<CR>:exec 'silent !alacritty -e buildSystem ' shellescape(@%, 1) '&'<CR>
		autocmd FileType sh nnoremap <buffer> <leader>r :w<CR>:exec 'silent !alacritty -e buildSystem' shellescape(@%, 1) '&'<CR>
		autocmd FileType python nnoremap <buffer> <leader>r :w<CR>:exec 'silent !alacritty -e buildSystem' shellescape(@%, 1) '&'<CR>
		autocmd FileType python nnoremap <buffer> <leader>c :%s/pdb\..*()$//g<CR>
		autocmd FileType python nnoremap <buffer> <leader>d ipdb.set_trace()<CR><Esc>
		autocmd FileType html nnoremap <buffer> <leader>r :w<CR>:!prettier -w % <CR>:e! %<CR><Esc>
		autocmd FileType tex nnoremap <buffer> <leader>r :w<CR>:VimtexCompile<CR>
		autocmd FileType c nnoremap <buffer> <leader>r :w<CR>:exec 'silent !alacritty -e buildSystem' shellescape(@%, 1) '&'<CR>
		autocmd FileType cpp nnoremap <buffer> <leader>r :w<CR>:exec 'silent !alacritty -e buildSystem' shellescape(@%, 1) '&'<CR>
		autocmd FileType rust nnoremap <buffer> <leader>r :w<CR>:exec 'silent !alacritty -e buildSystem' shellescape(@%, 1) '&'<CR>
		autocmd FileType rust nnoremap <buffer> <leader>c :w<CR>:exec 'silent !alacritty -e rustTest' '&'<CR>
	augroup END

	]]
else

	local noremap=function (mode,lhs,rhs,silent)
		if silent==nil then
			silent=true
		end
		vim.keymap.set(mode, lhs,rhs,{noremap=true, silent=silent})
	end

	local runCommands={
		sh = {{"<leader>r",":w<CR>:exec 'silent !alacritty -e buildSystem ' shellescape(@%, 1) '&'<CR>"}},
		python = {
		{"<leader>r",":w<CR>:exec 'silent !alacritty -e buildSystem ' shellescape(@%, 1) '&'<CR>"},
		{"<leader>c",":%s/pdb\\..*()$//g<CR>"},
		{"<leader>d", "ipdb.set_trace()<CR><Esc>"}
		},
		c = {{"<leader>r",":w<CR>:exec 'silent !alacritty -e buildSystem ' shellescape(@%, 1) '&'<CR>"}},
		cpp = {{"<leader>r",":w<CR>:exec 'silent !alacritty -e buildSystem ' shellescape(@%, 1) '&'<CR>"}},
		rust = {
			{"<leader>r",":w<CR>:exec 'silent !alacritty -e buildSystem ' shellescape(@%, 1) '&'<CR>"},
			{"<leader>c" ,":w<CR>:exec 'silent !alacritty -e rustTest' '&'<CR>"}
		},
		tex = {{"<leader>r", ":w<CR>:VimtexCompile<CR>"}},
		html = {{	"<leader>r", ":w<CR>:!prettier -w % <CR>:e! %<CR><Esc>"}}
	}



	local runners=vim.api.nvim_create_augroup("runners",{clear=true})
	create_autocmd("FileType", {
		pattern ={"sh","python","c","cpp","rust","tex","html"},
		callback=function()
			local matchedType=vim.fn.expand("<amatch>")
			local cmds=runCommands[matchedType]
			vim.schedule(function()
				for idx, table in pairs(cmds)do
					noremap("n",table[1],table[2])
				end
			end)
		end,
		group=runners}
	)




	local diagnostics=vim.api.nvim_create_augroup("diagnostics",{clear=true})
	create_autocmd("BufEnter,FileType", {
		pattern ="tex",
		callback=function()
			vim.diagnostic.disable()
		end,
		group=runners}
	)


end
