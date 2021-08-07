augroup snippets
	autocmd FileType cpp nmap ,cpp :-1read !cat ~/.config/nvim/snippets/cpp<CR>
	autocmd FileType c nmap ,c :-1read !cat ~/.config/nvim/snippets/c<CR>
	autocmd FileType tex nmap ,tex :-1read !cat ~/.config/nvim/snippets/tex<CR>
	autocmd FileType tex nmap s
	autocmd FileType tex nmap setlocal foldmethod=expr
  autocmd FileType tex nmap setlocal foldexpr=vimtex#fold#level(v:lnum)
  autocmd FileType tex nmap setlocal foldtext=vimtex#fold#text()
augroup END
