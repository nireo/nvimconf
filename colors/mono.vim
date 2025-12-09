runtime! colors/default.vim
let g:colors_name = 'mono'

set background=dark

highlight Normal       guifg=#C8C8C8 guibg=#090909

" UI Elements
highlight LineNr       guifg=#444444 guibg=#090909
highlight CursorLine   guibg=#121212
highlight CursorLineNr guifg=#A0A0A0 guibg=#121212 gui=bold
highlight ColorColumn  guibg=#121212
highlight SignColumn   guibg=#090909

" Window Dividers
highlight VertSplit    guifg=#1A1A1A guibg=#090909
highlight WinSeparator guifg=#1A1A1A guibg=#090909
highlight StatusLine   guifg=#909090 guibg=#141414 gui=NONE
highlight StatusLineNC guifg=#444444 guibg=#090909 gui=NONE

" Selection
highlight Visual       guibg=#262626

" Search
highlight Search       guifg=#E0E0E0 guibg=#303030
highlight IncSearch    guifg=#FFFFFF guibg=#404040 gui=bold

" --------------------------------
" The Colored Exceptions
" --------------------------------

" Comments: Slate Blue (Significantly more visible than grey)
highlight Comment        guifg=#78879E gui=italic
highlight SpecialComment guifg=#8998AF gui=italic

" Symbols: Matches Comment color, but without italics (for [] {} + - =)
highlight MutedSymbol    guifg=#78879E gui=NONE

" --------------------------------
" Flattening Syntax (The "Only White" Rule)
" --------------------------------
highlight! link Function        Normal
highlight! link Identifier      Normal
highlight! link Character       Normal
highlight String guifg=#789E96
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

" Link Standard Operators/Delimiters to the Comment Color
highlight! link Delimiter       MutedSymbol
highlight! link Operator        MutedSymbol

" --------------------------------
" TreeSitter Flattening
" --------------------------------
highlight! link @variable         Normal
highlight! link @variable.builtin Normal
highlight! link @variable.member  Normal
highlight! link @function         Normal
highlight! link @function.builtin Normal
highlight! link @function.macro   Normal
highlight! link @constructor      Normal
highlight! link @keyword          Normal
highlight! link @keyword.function Normal
highlight! link @type             Normal
highlight! link @type.builtin     Normal
highlight! link @constant         Normal
highlight! link @constant.builtin Normal
highlight! link @tag              Normal
highlight! link @tag.attribute    Normal
highlight! link @tag.delimiter    Normal
highlight! link @namespace        Normal
highlight! link @module           Normal

" Link TreeSitter Operators/Punctuation to the Comment Color
highlight! link @operator              MutedSymbol
highlight! link @punctuation.delimiter MutedSymbol
highlight! link @punctuation.bracket   MutedSymbol

" Link TS specific exceptions
highlight! link @string           String
highlight! link @comment          Comment

" --------------------------------
" Popups & Menus
" --------------------------------
highlight Pmenu        guifg=#A0A0A0 guibg=#141414
highlight PmenuSel     guifg=#FFFFFF guibg=#262626 gui=bold
highlight PmenuSbar    guibg=#141414
highlight PmenuThumb   guibg=#303030
highlight FloatBorder  guifg=#303030 guibg=#090909
highlight NormalFloat  guifg=#C8C8C8 guibg=#090909

" --------------------------------
" Diagnostics
" --------------------------------
highlight DiagnosticError guifg=#805050
highlight DiagnosticWarn  guifg=#807050
highlight DiagnosticInfo  guifg=#506070
highlight DiagnosticHint  guifg=#507050
