" mono.vim — minimal monochrome theme with “badge” strings/comments
" (based on runtime! colors/default.vim)

runtime! colors/default.vim
let g:colors_name = 'mono'

set background=dark

" --------------------------------
" Core
" --------------------------------
highlight Normal       guifg=#DEDEDE guibg=#090909

" --------------------------------
" UI Elements
" --------------------------------
highlight LineNr       guifg=#444444 guibg=#090909
highlight CursorLine   guibg=#121212
highlight CursorLineNr guifg=#A0A0A0 guibg=#121212 gui=bold
highlight ColorColumn  guibg=#121212
highlight SignColumn   guibg=#090909

" --------------------------------
" Window Dividers
" --------------------------------
highlight VertSplit    guifg=#1A1A1A guibg=#090909
highlight WinSeparator guifg=#1A1A1A guibg=#090909
highlight StatusLine   guifg=#909090 guibg=#141414 gui=NONE
highlight StatusLineNC guifg=#444444 guibg=#090909 gui=NONE

" --------------------------------
" Selection
" --------------------------------
" Teal visual selection (badge-like, but subtle)
highlight Visual       guibg=#163234 gui=NONE
highlight VisualNOS    guibg=#163234 gui=NONE

" --------------------------------
" Search
" --------------------------------
highlight Search       guifg=#E0E0E0 guibg=#303030
highlight IncSearch    guifg=#FFFFFF guibg=#404040 gui=bold

" --------------------------------
" The Colored Exceptions (Badge Style)
" --------------------------------

" Comments: Slate Blue badge
highlight Comment         guifg=#9BB6D1 guibg=#1A2430 gui=italic
highlight SpecialComment  guifg=#A7BED6 guibg=#1A2430 gui=italic

" Strings: Green/Teal badge
highlight String          guifg=#8FBFB2 guibg=#1B2A26 gui=NONE

" Symbols: Muted (no badge)
highlight MutedSymbol     guifg=#78879E gui=NONE

" --------------------------------
" Flattening Syntax (The "Only White" Rule)
" --------------------------------
highlight! link Function        Normal
highlight! link Identifier      Normal
highlight! link Character       Normal
highlight! link Statement       Normal
highlight! link Constant        Normal
highlight! link Number          Normal
highlight! link Boolean         Normal
highlight! link Float           Normal
highlight! link Conditional     Normal
highlight! link Repeat          Normal
highlight! link Label           Normal
highlight! link Keyword         Normal
highlight! link Exception       Normal
highlight! link PreProc         Normal
highlight! link Include         Normal
highlight! link Define          Normal
highlight! link Macro           Normal
highlight! link PreCondit       Normal
highlight! link Type            Normal
highlight! link StorageClass    Normal
highlight! link Structure       Normal
highlight! link Typedef         Normal
highlight! link Special         Normal
highlight! link SpecialChar     Normal
highlight! link Tag             Normal
highlight! link Title           Normal
highlight! link Directory       Normal

" Operators / Delimiters
highlight! link Delimiter       MutedSymbol
highlight! link Operator        MutedSymbol

" --------------------------------
" TreeSitter Flattening
" --------------------------------
highlight! link @variable              Normal
highlight! link @variable.builtin      Normal
highlight! link @variable.member       Normal
highlight! link @function              Normal
highlight! link @function.builtin      Normal
highlight! link @function.macro        Normal
highlight! link @constructor           Normal
highlight! link @keyword               Normal
highlight! link @keyword.function      Normal
highlight! link @type                  Normal
highlight! link @type.builtin          Normal
highlight! link @constant              Normal
highlight! link @constant.builtin      Normal
highlight! link @tag                   Normal
highlight! link @tag.attribute         Normal
highlight! link @tag.delimiter         Normal
highlight! link @namespace             Normal
highlight! link @module                Normal

highlight! link @operator              MutedSymbol
highlight! link @punctuation.delimiter MutedSymbol
highlight! link @punctuation.bracket   MutedSymbol

" TS exceptions (badge style)
highlight! link @string                String
highlight! link @comment               Comment

" --------------------------------
" Popups & Menus
" --------------------------------
highlight Pmenu        guifg=#A0A0A0 guibg=#141414
highlight PmenuSel     guifg=#FFFFFF guibg=#262626 gui=bold
highlight PmenuSbar    guibg=#141414
highlight PmenuThumb   guibg=#303030
highlight FloatBorder  guifg=#303030 guibg=#090909
highlight NormalFloat  guifg=#DEDEDE guibg=#090909

" --------------------------------
" Diagnostics
" --------------------------------
highlight DiagnosticError guifg=#805050
highlight DiagnosticWarn  guifg=#807050
highlight DiagnosticInfo  guifg=#506070
highlight DiagnosticHint  guifg=#507050
