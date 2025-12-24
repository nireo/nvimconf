runtime! colors/default.vim
let g:colors_name = 'mono'

set background=dark

highlight Normal         guifg=#B0B0B0 guibg=#090909
highlight BoldKeyword     guifg=#DEDEDE guibg=NONE gui=bold

highlight LineNr          guifg=#444444 guibg=#090909
highlight CursorLine      guibg=#090909
highlight CursorLineNr    guifg=#A0A0A0 guibg=#090909 gui=bold
highlight ColorColumn     guibg=#090909
highlight SignColumn      guibg=#090909

highlight VertSplit       guifg=#1A1A1A guibg=#090909
highlight WinSeparator    guifg=#1A1A1A guibg=#090909
highlight StatusLine      guifg=#909090 guibg=#141414 gui=NONE
highlight StatusLineNC    guifg=#444444 guibg=#090909 gui=NONE

highlight Visual          guibg=#163234 gui=NONE
highlight VisualNOS       guibg=#163234 gui=NONE

highlight Search          guifg=#090909 guibg=#EBCB8B gui=bold
highlight IncSearch       guifg=#090909 guibg=#FFFFFF gui=bold

highlight Comment           guifg=#9BB6D1 guibg=#1A2430 
highlight SpecialComment    guifg=#A7BED6 guibg=#1A2430
highlight String            guifg=#8FBFB2 guibg=#1B2A26 gui=NONE
highlight Function          guifg=#B2A7D6 gui=NONE
highlight Number            guifg=#D6BA8D gui=NONE
highlight Boolean           guifg=#D6BA8D gui=NONE
highlight MutedSymbol       guifg=#78879E gui=NONE

highlight! link Identifier    Normal
highlight! link Character     Normal
highlight! link Constant      Normal
highlight! link PreProc       Normal
highlight! link Include       Normal
highlight! link Define        Normal
highlight! link Macro         Normal
highlight! link PreCondit     Normal
highlight! link Special       Normal
highlight! link SpecialChar   Normal
highlight! link Tag           Normal
highlight! link Title         Normal
highlight! link Directory     Normal

highlight! link Type          BoldKeyword
highlight! link StorageClass  BoldKeyword
highlight! link Structure     BoldKeyword
highlight! link Typedef       BoldKeyword
highlight! link Keyword       BoldKeyword
highlight! link Conditional   BoldKeyword
highlight! link Repeat        BoldKeyword
highlight! link Statement     BoldKeyword
highlight! link Exception     BoldKeyword
highlight! link Label         BoldKeyword

highlight! link Float         Number
highlight! link Delimiter     MutedSymbol
highlight! link Operator      MutedSymbol

highlight! link @variable          Normal
highlight! link @variable.builtin  Normal
highlight! link @variable.member   Normal
highlight! link @constant          Normal
highlight! link @constant.builtin  Normal
highlight! link @tag               Normal
highlight! link @tag.attribute     Normal
highlight! link @tag.delimiter     Normal
highlight! link @namespace         Normal
highlight! link @module            Normal

highlight! link @type              BoldKeyword
highlight! link @type.builtin      BoldKeyword
highlight! link @type.definition   BoldKeyword
highlight! link @storageclass      BoldKeyword
highlight! link @constructor       BoldKeyword
highlight! link @keyword           BoldKeyword
highlight! link @keyword.function  BoldKeyword
highlight! link @keyword.return    BoldKeyword

highlight! link @string            String
highlight! link @comment           Comment
highlight! link @function          Function
highlight! link @function.builtin  Function
highlight! link @function.macro    Function
highlight! link @function.method   Function
highlight! link @number            Number
highlight! link @number.float      Number
highlight! link @boolean           Boolean

highlight! link @operator                 MutedSymbol
highlight! link @punctuation.delimiter   MutedSymbol
highlight! link @punctuation.bracket     MutedSymbol

highlight Pmenu           guifg=#A0A0A0 guibg=#141414
highlight PmenuSel        guifg=#FFFFFF guibg=#262626 gui=bold
highlight PmenuSbar       guibg=#141414
highlight PmenuThumb      guibg=#303030
highlight FloatBorder     guifg=#303030 guibg=#090909
highlight NormalFloat     guifg=#B0B0B0 guibg=#090909

highlight DiagnosticError guifg=#FF6B6B
highlight DiagnosticWarn  guifg=#FFD93D
highlight DiagnosticInfo  guifg=#6BCBFF
highlight DiagnosticHint  guifg=#A3FFD6
