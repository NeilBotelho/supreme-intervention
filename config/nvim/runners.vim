"Runners
augroup runners
	autocmd!
	autocmd FileType * map <buffer> <leader>r :w<CR>:exec 'silent !alacritty -e buildSystem ' shellescape(@%, 1) '&'<CR>
	autocmd FileType sh map <buffer> <leader>r :w<CR>:exec 'silent !alacritty -e buildSystem' shellescape(@%, 1) '&'<CR>
	autocmd FileType python map <buffer> <leader>r :w<CR>:exec 'silent !alacritty -e buildSystem' shellescape(@%, 1) '&'<CR>
	autocmd FileType python map <buffer> <leader>c :%s/pdb\..*()$//g<CR>
	autocmd FileType python map <buffer> <leader>d ipdb.set_trace()<CR><Esc>
	autocmd FileType tex map <buffer> <leader>r :w<CR>:VimtexCompile<CR>
	autocmd FileType c map <buffer> <leader>r :w<CR>:exec 'silent !alacritty -e buildSystem' shellescape(@%, 1) '&'<CR>
	autocmd FileType cpp map <buffer> <leader>r :w<CR>:exec 'silent !alacritty -e buildSystem' shellescape(@%, 1) '&'<CR>
	autocmd FileType rust map <buffer> <leader>r :w<CR>:exec 'silent !alacritty -e buildSystem' shellescape(@%, 1) '&'<CR>
	autocmd FileType rust map <buffer> <leader>c :w<CR>:exec 'silent !alacritty -e rustTest' '&'<CR>
augroup END

