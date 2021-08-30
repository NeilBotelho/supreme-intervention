augroup snippets
	autocmd FileType cpp nnoremap ,cpp :-1read !cat ~/.config/nvim/snippets/cpp<CR>
	autocmd FileType cpp nnoremap ,comp :-1read !cat ~/.config/nvim/snippets/competitive_coding/<CR>
	autocmd FileType c nnoremap ,c :-1read !cat ~/.config/nvim/snippets/c<CR>
	autocmd FileType tex nnoremap ,tex :-1read !cat ~/.config/nvim/snippets/tex<CR>
	autocmd FileType tex nnoremap s
	autocmd FileType tex nnoremap setlocal foldmethod=expr
  autocmd FileType tex nnoremap setlocal foldexpr=vimtex#fold#level(v:lnum)
  autocmd FileType tex nnoremap setlocal foldtext=vimtex#fold#text()
augroup END
