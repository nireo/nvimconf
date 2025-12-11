runtime! colors/default.vim
let g:colors_name = 'abyss'

set background=dark

" Base Text: A very light, desaturated cyan/white (Duck Egg)
" Background: Your requested Deep Teal
highlight Normal        guifg=#C0D5D8 guibg=#062329

" UI Elements (Shifted from neutral grey to Dark Teal/Cyan tones)
highlight LineNr        guifg=#365359 guibg=#062329
highlight CursorLine    guibg=#092B32
highlight CursorLineNr  guifg=#709599 guibg=#092B32 gui=bold
highlight ColorColumn   guibg=#092B32
highlight SignColumn    guibg=#062329

" Window Dividers (Subtle darker teal)
highlight VertSplit     guifg=#0F3842 guibg=#062329
highlight WinSeparator  guifg=#0F3842 guibg=#062329
highlight StatusLine    guifg=#90AAB0 guibg=#0F3842 gui=NONE
highlight StatusLineNC  guifg=#365359 guibg=#062329 gui=NONE

" Selection (A distinct brighter teal overlay)
highlight Visual        guibg=#13404A

" Search
highlight Search        guifg=#E0E0E0 guibg=#2D5B69
highlight IncSearch     guifg=#062329 guibg=#78C2B4 gui=bold

" --------------------------------
" The Colored Exceptions
" --------------------------------

" Comments: Muted Blue-Grey (Harmonizes with teal, but recessive)
highlight Comment         guifg=#537E88 gui=italic
highlight SpecialComment  guifg=#68939D gui=italic

" Symbols: Matches Comment color, but without italics
highlight MutedSymbol     guifg=#C0D5D8 gui=NONE

" --------------------------------
" Flattening Syntax (The "Only White" Rule)
" --------------------------------
highlight! link Function        Normal
highlight! link Identifier      Normal
highlight! link Character       Normal

" String: A Soft Mint/Aqua (Pops gently against the deep background)
highlight String guifg=#78C2B4

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
highlight! link @string            String
highlight! link @comment           Comment

" --------------------------------
" Popups & Menus
" --------------------------------
highlight Pmenu         guifg=#90AAB0 guibg=#0F3842
highlight PmenuSel      guifg=#FFFFFF guibg=#13404A gui=bold
highlight PmenuSbar     guibg=#0F3842
highlight PmenuThumb    guibg=#2D5B69
highlight FloatBorder   guifg=#2D5B69 guibg=#062329
highlight NormalFloat   guifg=#C0D5D8 guibg=#062329

" --------------------------------
" Diagnostics (Desaturated to fit the mood)
" --------------------------------
highlight DiagnosticError guifg=#D95E67
highlight DiagnosticWarn  guifg=#D4AF60
highlight DiagnosticInfo  guifg=#537E88
highlight DiagnosticHint  guifg=#507050
