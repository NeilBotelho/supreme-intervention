"Toggle transparency{{{

let t:is_transparent = 0
function! Toggle_transparent()
    if t:is_transparent == 0
        hi Normal guibg=NONE ctermbg=NONE
        let t:is_transparent = 1
    else
        set background=dark
        let t:is_tranparent = 0
    endif
endfunction
nnoremap tt : call Toggle_transparent()<CR>

"}}}
" PresentMode {{{
" let s:presentMode=0
" function! TogglePresentationMode()
" 	if s:presentMode == 0
" 		let s:presentMode=1
" 		" AirlineToggle	
" 		set noshowmode
" 		set noshowcmd
" 		set laststatus=0
" 		set noruler
" 		set colorcolumn=0
" 		nnoremap <silent> <left> :bp<CR>
" 		nnoremap <silent> <right> :bn<CR>
" 	else

"         let s:presentMode = 0
"         set showmode
"         set showcmd
"         set laststatus=2
"         set ruler
" 		set colorcolumn=80
" 		unmap <left>
" 		unmap <right>
"     endif
" endfunction
let s:presentMode=0
function! PresentMode()
	Goyo
	if s:presentMode == 0
		let s:presentMode=0
		nnoremap <silent> <left> :bp<CR>
		nnoremap <silent> <right> :bn<CR>
	else
		let s:presentMode=1
		unmap <left>
		unmap <right>
	endif
endfunction

"}}}
"TerminalToggle{{{
"
let s:term_window = -1
let s:term_buffer = -1
let s:term_job_id = -1

function! TerminalOpen()
    " Check if buffer exists, if not create a window and a buffer
    if !bufexists(s:term_buffer)
    " Creates a window call monkey_terminal
    new local_terminal

    " disable line numbers
    setlocal nonumber norelativenumber
    " Moves to the window the right the current one
    wincmd L
    let s:term_job_id = termopen($SHELL, { 'detach': 1 })

     " Change the name of the buffer to "Terminal 1"
     silent file Terminal\ 1
     " Gets the id of the terminal window
     let s:term_window = win_getid()
     let s:term_buffer = bufnr('%')

    " The buffer of the terminal won't appear in the list of the buffers
    " when calling :buffers command
    set nobuflisted
  else
    if !win_gotoid(s:term_window)
    split
    " Moves to the window below the current one
    wincmd L   
    buffer Terminal\ 1
     " Gets the id of the terminal window
     let s:term_window = win_getid()
    endif
  endif
  " be in insert mode immediately
  startinsert
endfunction

function! TerminalToggle()
  if win_gotoid(s:term_window)
    hide
  else
    call TerminalOpen()
  endif
endfunction
"}}}
