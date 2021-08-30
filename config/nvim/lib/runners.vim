"Runners
augroup runners
	autocmd!
	autocmd FileType * nnoremap <buffer> <leader>r :w<CR>:exec 'silent !alacritty -e buildSystem ' shellescape(@%, 1) '&'<CR>
	autocmd FileType sh nnoremap <buffer> <leader>r :w<CR>:exec 'silent !alacritty -e buildSystem' shellescape(@%, 1) '&'<CR>
	autocmd FileType python nnoremap <buffer> <leader>r :w<CR>:exec 'silent !alacritty -e buildSystem' shellescape(@%, 1) '&'<CR>
	autocmd FileType python nnoremap <buffer> <leader>c :%s/pdb\..*()$//g<CR>
	autocmd FileType python nnoremap <buffer> <leader>d ipdb.set_trace()<CR><Esc>
	autocmd FileType tex nnoremap <buffer> <leader>r :w<CR>:VimtexCompile<CR>
	autocmd FileType c nnoremap <buffer> <leader>r :w<CR>:exec 'silent !alacritty -e buildSystem' shellescape(@%, 1) '&'<CR>
	autocmd FileType cpp nnoremap <buffer> <leader>r :w<CR>:exec 'silent !alacritty -e buildSystem' shellescape(@%, 1) '&'<CR>
	autocmd FileType rust nnoremap <buffer> <leader>r :w<CR>:exec 'silent !alacritty -e buildSystem' shellescape(@%, 1) '&'<CR>
	autocmd FileType rust nnoremap <buffer> <leader>c :w<CR>:exec 'silent !alacritty -e rustTest' '&'<CR>
augroup END

