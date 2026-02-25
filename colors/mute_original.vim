runtime! colors/default.vim
let g:colors_name = 'mute_original'

set background=dark

" --- Core Palette (Original) ---
" Background:   #0F0E0C
" Foreground:   #B0B0B0 (Gray)
" Keyword:      #5F8787 (Muted Teal)
" Type/Label:   #708090 (Slate)
" Comment:      #9B9158 (Muted Warm Yellow)
" String:       #D0D0D0 (Light Gray)
" Punctuation:  #444444 (Dim Gray)

" Base colors
highlight Normal          guifg=#B0B0B0 guibg=#0F0E0C
highlight BoldKeyword     guifg=#5F8787 guibg=NONE    gui=bold
highlight SlateKeyword    guifg=#708090 guibg=NONE    gui=NONE
highlight Muted           guifg=#444444 guibg=NONE    gui=NONE

" UI Elements
highlight LineNr          guifg=#333333 guibg=#0F0E0C
highlight CursorLine      guibg=#181715
highlight CursorLineNr    guifg=#708090 guibg=#0F0E0C gui=bold
highlight ColorColumn     guibg=#0F0E0C
highlight SignColumn      guibg=#0F0E0C
highlight VertSplit       guifg=#22211F guibg=#0F0E0C
highlight WinSeparator    guifg=#22211F guibg=#0F0E0C
highlight StatusLine      guifg=#FFFFFF guibg=#1C1B19 gui=NONE
highlight StatusLineNC    guifg=#444444 guibg=#0F0E0C gui=NONE

" Selection and Search
highlight Visual          guibg=#202A2A gui=NONE
highlight Search          guifg=#0F0E0C guibg=#5F8787 gui=bold
highlight IncSearch       guifg=#0F0E0C guibg=#FFFFFF gui=bold

" --- Content ---
highlight Comment         guifg=#9B9158 guibg=NONE    gui=italic
highlight SpecialComment  guifg=#9B9158 guibg=NONE    gui=italic
highlight String          guifg=#D0D0D0 guibg=NONE    gui=NONE
highlight Constant        guifg=#B0B0B0 guibg=NONE    gui=NONE
highlight Number          guifg=#B0B0B0 guibg=NONE    gui=NONE
highlight Boolean         guifg=#B0B0B0 guibg=NONE    gui=NONE

" --- Links ---
highlight! link Identifier     Normal
highlight! link Function       Normal
highlight! link Special        Normal
highlight! link Character      Normal
highlight! link PreProc        Normal
highlight! link Include        Normal
highlight! link Define         Normal
highlight! link Macro          Normal
highlight! link PreCondit      Normal
highlight! link SpecialChar    Normal
highlight! link Tag            Normal
highlight! link Title          Normal
highlight! link Directory      Normal

" Keyword Accents
highlight! link Keyword        BoldKeyword
highlight! link Conditional    BoldKeyword
highlight! link Repeat         BoldKeyword
highlight! link Statement      BoldKeyword
highlight! link Exception      BoldKeyword

" Type/Structure Accents
highlight! link Type           SlateKeyword
highlight! link StorageClass   SlateKeyword
highlight! link Structure      SlateKeyword
highlight! link Typedef        SlateKeyword
highlight! link Label          SlateKeyword

" Muted Punctuation
highlight! link Delimiter      Muted
highlight! link Operator       Muted

" --- Treesitter Overrides ---
highlight! link @variable                Normal
highlight! link @variable.builtin        Normal
highlight! link @variable.member         Normal
highlight! link @constant                Normal
highlight! link @constant.builtin        Normal
highlight! link @tag                     Normal
highlight! link @tag.attribute           Normal
highlight! link @tag.delimiter           Muted
highlight! link @namespace               Normal
highlight! link @module                  Normal
highlight! link @function                Normal
highlight! link @function.builtin        Normal
highlight! link @function.macro          Normal
highlight! link @function.method         Normal

highlight! link @type                    SlateKeyword
highlight! link @type.builtin            SlateKeyword
highlight! link @storageclass            SlateKeyword
highlight! link @constructor             SlateKeyword
highlight! link @keyword                 BoldKeyword
highlight! link @keyword.function        BoldKeyword
highlight! link @keyword.return          BoldKeyword

highlight! link @string                  String
highlight! link @comment                 Comment

highlight! link @operator                Muted
highlight! link @punctuation.delimiter   Muted
highlight! link @punctuation.bracket     Muted

" Pop-up Menu
highlight Pmenu           guifg=#A0A0A0 guibg=#1A1917
highlight PmenuSel        guifg=#FFFFFF guibg=#202A2A gui=bold
highlight FloatBorder     guifg=#303030 guibg=#0F0E0C
highlight NormalFloat     guifg=#B0B0B0 guibg=#0F0E0C

" Diagnostics
highlight DiagnosticError guifg=#704040
highlight DiagnosticWarn  guifg=#706040
highlight DiagnosticInfo  guifg=#506070
highlight DiagnosticHint  guifg=#507060
