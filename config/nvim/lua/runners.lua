--Runners
--
-- local create_autocmd=vim.api.nvim_create_autocmd
-- if create_autocmd==nil then
-- 	vim.cmd[[ augroup runners
-- 		autocmd!
-- 		autocmd FileType * nnoremap <buffer> <leader>r :w<CR>:exec 'silent !alacritty -e buildSystem ' shellescape(@%, 1) '&'<CR>
-- 		autocmd FileType sh nnoremap <buffer> <leader>r :w<CR>:exec 'silent !alacritty -e buildSystem' shellescape(@%, 1) '&'<CR>
-- 		autocmd FileType python nnoremap <buffer> <leader>r :w<CR>:exec 'silent !alacritty -e buildSystem' shellescape(@%, 1) '&'<CR>
-- 		autocmd FileType python nnoremap <buffer> <leader>c :%s/pdb\..*()$//g<CR>
-- 		autocmd FileType python nnoremap <buffer> <leader>d ipdb.set_trace()<CR><Esc>
-- 		autocmd FileType html nnoremap <buffer> <leader>r :w<CR>:!prettier -w % <CR>:e! %<CR><Esc>
-- 		autocmd FileType tex nnoremap <buffer> <leader>r :w<CR>:VimtexCompile<CR>
-- 		autocmd filetype c nnoremap <buffer> <leader>r :w<cr>:exec 'silent !alacritty -e buildsystem' shellescape(@%, 1) '&'<cr>
-- 		autocmd filetype go nnoremap <buffer> <leader>r :w<cr>:exec 'silent !alacritty -e buildsystem' shellescape(@%, 1) '&'<cr>
-- 		autocmd FileType cpp nnoremap <buffer> <leader>r :w<CR>:exec 'silent !alacritty -e buildSystem' shellescape(@%, 1) '&'<CR>
-- 		autocmd FileType rust nnoremap <buffer> <leader>r :w<CR>:exec 'silent !alacritty -e buildSystem' shellescape(@%, 1) '&'<CR>
-- 		autocmd FileType rust nnoremap <buffer> <leader>c :w<CR>:exec 'silent !alacritty -e rustTest' '&'<CR>
-- 	augroup END
--
-- 	]]
-- else
--
-- 	local noremap=function (mode,lhs,rhs,silent)
-- 		if silent==nil then
-- 			silent=true
-- 		end
-- 		vim.keymap.set(mode, lhs,rhs,{noremap=true, silent=silent})
-- 	end
--
-- 	local runCommands={
-- 		sh = {{"<leader>r",":w<CR>:exec 'silent !alacritty -e buildSystem ' shellescape(@%, 1) '&'<CR>"}},
-- 		javascript = {{"<leader>r",":w<CR>:exec 'silent !alacritty -e buildSystem ' shellescape(@%, 1) '&'<CR>"}},
-- 		go = {{"<leader>r",":w<CR>:exec 'silent !alacritty -e buildSystem ' shellescape(@%, 1) '&'<CR>"}},
--
-- 		python = {
-- 		{"<leader>r",":w<CR>:exec 'silent !alacritty -e buildSystem ' shellescape(@%, 1) '&'<CR>"},
-- 		-- {"<leader>c",":%s/pdb\\..*()$//g<CR>"},
-- 		-- {"<leader>d", "ipdb.set_trace()<CR><Esc>"}
-- 		},
-- 		awk = {{"<leader>r",":w<CR>:exec 'silent !alacritty -e buildSystem ' shellescape(@%, 1) '&'<CR>"}},
--
-- 		c = {{"<leader>r",":w<CR>:exec 'silent !alacritty -e buildSystem ' shellescape(@%, 1) '&'<CR>"}},
-- 		cpp = {{"<leader>r",":w<CR>:exec 'silent !alacritty -e buildSystem ' shellescape(@%, 1) '&'<CR>"}},
-- 		rust = {
-- 			{"<leader>r",":w<CR>:exec 'silent !alacritty -e buildSystem ' shellescape(@%, 1) '&'<CR>"},
-- 			{"<leader>c" ,":w<CR>:exec 'silent !alacritty -e rustTest' '&'<CR>"}
-- 		},
-- 		tex = {{"<leader>r", ":w<CR>:VimtexCompile<CR>"}},
-- 		html = {{	"<leader>r", ":w<CR>:!prettier -w % <CR>:e! %<CR><Esc>"}}
-- 	}
--
--
--
-- 	local runners=vim.api.nvim_create_augroup("runners",{clear=true})
-- 	create_autocmd("FileType", {
-- 		pattern ={"sh","python","c","cpp","rust","tex","html","javascript","go","awk"},
-- 		callback=function()
-- 			local matchedType=vim.fn.expand("<amatch>")
-- 			local cmds=runCommands[matchedType]
-- 			vim.schedule(function()
-- 				for idx, table in pairs(cmds)do
-- 					noremap("n",table[1],table[2])
-- 				end
-- 			end)
-- 		end,
-- 		group=runners}
-- 	)
--
--
--
--
-- 	local diagnostics=vim.api.nvim_create_augroup("diagnostics",{clear=true})
-- 	create_autocmd("FileType", {
-- 		pattern ="tex",
-- 		callback=function()
-- 			vim.diagnostic.disable()
-- 		end,
-- 		group=runners}
-- 	)
--
--
-- end
--
--
--
-- 	-- local runCommands={
-- 	-- 	sh = {{"<leader>r",":w<CR>:exec 'silent !alacritty -e buildSystem ' shellescape(@%, 1) '&'<CR>"}},
-- 	-- 	javascript = {{"<leader>r",":w<CR>:exec 'silent !alacritty -e buildSystem ' shellescape(@%, 1) '&'<CR>"}},
-- 	-- 	go = {{"<leader>r",":w<CR>:exec 'silent !alacritty -e buildSystem ' shellescape(@%, 1) '&'<CR>"}},
-- 	--
-- 	-- 	python = {
-- 	-- 	{"<leader>r",":w<CR>:exec 'silent !alacritty -e buildSystem ' shellescape(@%, 1) '&'<CR>"},
-- 	-- 	-- {"<leader>c",":%s/pdb\\..*()$//g<CR>"},
-- 	-- 	-- {"<leader>d", "ipdb.set_trace()<CR><Esc>"}
-- 	-- 	},
-- 	-- 	awk = {{"<leader>r",":w<CR>:exec 'silent !alacritty -e buildSystem ' shellescape(@%, 1) '&'<CR>"}},
-- 	--
-- 	-- 	c = {{"<leader>r",":w<CR>:exec 'silent !alacritty -e buildSystem ' shellescape(@%, 1) '&'<CR>"}},
-- 	-- 	cpp = {{"<leader>r",":w<CR>:exec 'silent !alacritty -e buildSystem ' shellescape(@%, 1) '&'<CR>"}},
-- 	-- 	rust = {
-- 	-- 		{"<leader>r",":w<CR>:exec 'silent !alacritty -e buildSystem ' shellescape(@%, 1) '&'<CR>"},
-- 	-- 		{"<leader>c" ,":w<CR>:exec 'silent !alacritty -e rustTest' '&'<CR>"}
-- 	-- 	},
-- 	-- 	tex = {{"<leader>r", ":w<CR>:VimtexCompile<CR>"}},
-- 	-- 	html = {{	"<leader>r", ":w<CR>:!prettier -w % <CR>:e! %<CR><Esc>"}}
-- 	-- }
-- Code Runner - execute commands in a floating terminal
local fterm=require'FTerm'
local runners = {
	python = 'python',
	go = 'c',
	sh = 'bash',
	zig = 'zig build --cache-dir "/tmp/tst/zig/cache"',
	c = 'c',
	cpp = 'c',
	rust = 'c',
	lua = 'lua',
	javascript = 'node'
}

vim.keymap.set('n', '<leader>r', function()
		vim.cmd('write')
    local buf = vim.api.nvim_buf_get_name(0)
    local ftype = vim.filetype.match({ filename = buf })
    local exec = runners[ftype]
	if ftype=='zig' then
		buf=''
	end
    if exec ~= nil then
        fterm.run(exec..' '..buf)
		else
        fterm.run('c '..buf)

    end
end)




