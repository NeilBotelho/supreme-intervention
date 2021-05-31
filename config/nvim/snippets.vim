augroup snippets
	autocmd FileType cpp nmap ,cpp :-1read !cat ~/.config/nvim/snippets/cpp<CR>
	autocmd FileType tex nmap ,tex :-1read !cat ~/.config/nvim/snippets/tex<CR>
augroup END
