let g:lightline={
  \ 'colorscheme': 'wombat',
	\ 'active' : {
	\	  'left': [ [ 'mode', 'paste' ],
	\				[ 'readonly', 'filename', 'gitbranch', 'modified' ] ],
	\	  'right': [ [ 'lineinfo' ],
	\				 [ 'percent' ],
	\				 [ 'fileformat', 'fileencoding', 'filetype' ] ] },
	\
	\ 'inactive' : {
	\	  'left': [ [ 'filename' ] ],
	\	  'right': [ [ 'lineinfo' ],
	\				 [ 'percent' ] ] },
	\
	\ 'component_function': {
	\   'gitbranch': 'FugitiveHead'
	\ },
	\ }

" File type component
	" \ 'component' : {
	" \	  'filetype': '%{&ft!=#""?&ft:"none"}' },
	" \
