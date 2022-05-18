"Increase pop up size
let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.9 } }
"
"Ignore patterns
let $FZF_DEFAULT_COMMAND = 'rg --files --ignore-case --hidden -g "!{.git,node_modules}/*"'
command! -bang -nargs=? -complete=dir Files
     \ call fzf#vim#files(<q-args>, fzf#vim#with_preview(), <bang>0)

"Syntax Highlighting
let $FZF_DEFAULT_OPTS="--ansi --preview-window 'right:55%' --layout reverse --margin=1,2 --preview 'bat --color=always --style=header,grid --line-range :300 {}'"

