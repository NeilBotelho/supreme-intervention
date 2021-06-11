" NERDTree Git Status Symbols{{{
 let g:NERDTreeGitStatusIndicatorMapCustom = {
   \ "Modified"  : "✹",
   \ "Staged"    : "✚",
   \ "Untracked" : "✭",
   \ "Renamed"   : "➜",
   \ "Unmerged"  : "═",
   \ "Deleted"   : "✖",
   \ "Dirty"     : "✗",
   \ "Clean"     : "✔︎",
   \ 'Ignored'   : '☒',
   \ "Unknown"   : "?"
   \ }
"}}}
"{{{ NERDTree Syntax Highlight
" Enables folder icon highlighting using exact match
let g:NERDTreeHighlightFolders = 1
" Highlights the folder name
let g:NERDTreeHighlightFoldersFullName = 1
" Color customization
let s:brown = "905532"
let s:aqua =  "3AFFDB"
let s:blue = "689FB6"
let s:darkBlue = "44788E"
let s:purple = "834F79"
let s:lightPurple = "834F79"
let s:red = "AE403F"
let s:beige = "F5C06F"
let s:yellow = "F09F17"
let s:orange = "D4843E"
let s:darkOrange = "F16529"
let s:pink = "CB6F6F"
let s:salmon = "EE6E73"
let s:green = "8FAA54"
let s:lightGreen = "31B53E"
let s:white = "FFFFFF"
let s:rspec_red = 'FE405F'
let s:git_orange = 'F54D27'
" This line is needed to avoid error
let g:NERDTreeExtensionHighlightColor = {}
" Sets the color of css files to blue
let g:NERDTreeExtensionHighlightColor['css'] = s:blue
" This line is needed to avoid error
let g:NERDTreeExactMatchHighlightColor = {}
" Sets the color for .gitignore files
let g:NERDTreeExactMatchHighlightColor['.gitignore'] = s:git_orange
" This line is needed to avoid error
let g:NERDTreePatternMatchHighlightColor = {}
" Sets the color for files ending with _spec.rb
let g:NERDTreePatternMatchHighlightColor['.*_spec\.rb$'] = s:rspec_red
" Sets the color for folders that did not match any rule
let g:WebDevIconsDefaultFolderSymbolColor = s:beige
" Sets the color for files that did not match any rule
let g:WebDevIconsDefaultFileSymbolColor = s:blue
"}}}
