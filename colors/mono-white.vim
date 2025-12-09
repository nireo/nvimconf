" colors/default.vim
set background=light
runtime! colors/default.vim
let g:colors_name = 'mono-white'

highlight Normal guifg=#4a5353 guibg=#e5dfd3
" Fixed typo in original background color (was #e5df3)
highlight StatusLine guifg=#4a5353 guibg=#e5dfd3
highlight StatusLineNC guifg=#606264 guibg=#dddddd
highlight! Function guifg=#4a5353 gui=NONE
highlight! Title guifg=#4a5353
highlight! Identifier guifg=#4a5353
highlight! Delimiter guifg=#4a5353
highlight! Directory guifg=#4a5353 gui=NONE
highlight! Module cterm=italic gui=italic
highlight! Special guifg=#4a5353
highlight! link Namespace Module
highlight! Type guifg=#4a5353
highlight! Number guifg=#4a5353 ctermfg=60
highlight String guifg=#9E9178
highlight! link Float Number
highlight! link Constructor Type
highlight! link Character String
highlight! Constant guifg=#4a5353
highlight! Operator guifg=#4a5353
highlight! ColorColumn guibg=#e5dfd3
highlight! Keyword guifg=#4a5353 ctermfg=67 gui=NONE
highlight! link @namespace Namespace
highlight! link @module Module
highlight! link @module.builtin Module
highlight! link @string.special.path Underlined
highlight! link @constructor Constructor
highlight! link @identifier Identifier
highlight! link @type.builtin @type
highlight! link @variable.builtin @variable
highlight! link @constant.builtin @constant
highlight! link @function.builtin @function
highlight! link @tag.attribute @attribute
highlight! link @keyword.function Keyword
highlight! link @keyword.operator Keyword
highlight! link @keyword.return Keyword
highlight! link @string String
highlight! Comment guifg=#007d9c ctermfg=65 gui=italic cterm=italic
highlight! TodoFgTODO guifg=#4a5353 ctermfg=65 gui=italic cterm=italic
highlight! TodoBgTODO guifg=#e5dfd3 guibg=#4a5353 ctermfg=65 gui=italic cterm=italic
highlight Pmenu        guifg=#A0A0A0 guibg=#141414
highlight PmenuSel     guifg=#FFFFFF guibg=#262626 gui=bold
highlight PmenuSbar    guibg=#141414
highlight PmenuThumb   guibg=#303030
highlight FloatBorder  guifg=#303030 guibg=#090909
highlight NormalFloat  guifg=#C8C8C8 guibg=#090909
highlight! NvimPickerNormal guifg=#4a5353 guibg=#e5dfd3
highlight! NvimPickerBorder guifg=#d5d5d5 guibg=#e5dfd3
highlight! NvimPickerSelected guifg=#4a5353 guibg=#e0e0e0 gui=NONE
highlight! NvimPickerHeader guifg=#4a5353 guibg=#e5dfd3 gui=NONE
highlight! NvimPickerHeaderBorder guifg=#d5d5d5 guibg=#e5dfd3
" Floating windows
highlight! FloatBorder guifg=#d5d5d5 guibg=#e5dfd3
highlight! FloatTitle guifg=#4a5353 guibg=#e5dfd3 gui=NONE
highlight! NormalFloat guifg=#4a5353 guibg=#e5dfd3
highlight! FloatShadow guibg=#e8e8e8 blend=80
highlight! FloatShadowThrough guibg=#e8e8e8 blend=100
" Variable and property links
highlight! link @variable.member Identifier
highlight! link @variable.member.lua Identifier
highlight! link @property.lua Identifier
highlight! link @field.lua Identifier
highlight! @variable.member.builtin guifg=#4a5353
highlight! @config guifg=#4a5353
highlight! link @method.call Identifier
highlight! link @method Identifier
highlight! link @label.lua Identifier
highlight! @variable.builtin guifg=#4a5353
highlight! @namespace.lua guifg=#4a5353
highlight! @module.builtin guifg=#4a5353
highlight! @variable guifg=#4a5353
highlight! DiffAdd guifg=#4a5353 guibg=#d4f0d4
highlight! DiffChange guifg=#4a5353 guibg=#f0f0d4
highlight! DiffDelete guifg=#4a5353 guibg=#f0d4d4
highlight! DiffText guifg=#4a5353 guibg=#e8e8d4 gui=NONE
highlight! PreProc guifg=#4a5353
highlight! Statement guifg=#4a5353
" Line numbers
highlight! LineNr guifg=#999999 guibg=#e5dfd3
highlight! CursorLineNr guifg=#666666 guibg=#e5dfd3 gui=NONE
highlight! DiagnosticError guifg=#c73c3f guibg=NONE
highlight! DiagnosticWarn guifg=#c77c3f guibg=NONE
highlight! DiagnosticInfo guifg=#007d9c guibg=NONE
highlight! DiagnosticHint guifg=#5a7d6b guibg=NONE
highlight! DiagnosticUnderlineError gui=underline guisp=#c73c3f
highlight! DiagnosticUnderlineWarn gui=underline guisp=#c77c3f
highlight! DiagnosticUnderlineInfo gui=underline guisp=#007d9c
highlight! DiagnosticUnderlineHint gui=underline guisp=#5a7d6b

" --- UPDATED VISUALS & SEARCH ---

" Search: Soft Gold/Maize to complement the Lavender
highlight! Search guifg=#4a5353 guibg=#f0e2a8
highlight! CurSearch guifg=#4a5353 guibg=#e8d080 gui=bold
highlight! IncSearch guifg=#4a5353 guibg=#e8d080

" Visuals: Nice Lavender
highlight! Visual guibg=#dcd0ed guifg=NONE
highlight! VisualNOS guibg=#dcd0ed guifg=NONE

" LSP References: Fainter Lavender (for when cursor is over a variable)
highlight! LspReferenceText guibg=#e6e1ed guifg=NONE
highlight! LspReferenceRead guibg=#e6e1ed guifg=NONE
highlight! LspReferenceWrite guibg=#dcd0ed guifg=NONE
