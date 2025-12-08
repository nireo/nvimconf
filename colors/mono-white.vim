" colors/default.vim
set background=light
runtime! colors/default.vim
let g:colors_name = 'white-white'

highlight Normal guifg=#000000 guibg=#ededed
highlight StatusLine guifg=#000000 guibg=#e8e8e8
highlight StatusLineNC guifg=#606264 guibg=#ececec
highlight! Function guifg=#000000 gui=NONE
highlight! Title guifg=#000000
highlight! Identifier guifg=#000000
highlight! Delimiter guifg=#000000
highlight! Directory guifg=#000000 gui=NONE
highlight! Module cterm=italic gui=italic
highlight! Special guifg=#000000
highlight! link Namespace Module
highlight! Type guifg=#000000
highlight! Number guifg=#000000 ctermfg=60
highlight! link Float Number
highlight! link Constructor Type
highlight! link Character String
highlight! Constant guifg=#000000
highlight! Operator guifg=#000000
highlight! ColorColumn guibg=#ededed
highlight! String guifg=#000000
highlight! Keyword guifg=#000000 ctermfg=67 gui=NONE
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
highlight! TodoFgTODO guifg=#000000 ctermfg=65 gui=italic cterm=italic
highlight! TodoBgTODO guifg=#ededed guibg=#000000 ctermfg=65 gui=italic cterm=italic
highlight Pmenu        guifg=#A0A0A0 guibg=#141414
highlight PmenuSel     guifg=#FFFFFF guibg=#262626 gui=bold
highlight PmenuSbar    guibg=#141414
highlight PmenuThumb   guibg=#303030
highlight FloatBorder  guifg=#303030 guibg=#090909
highlight NormalFloat  guifg=#C8C8C8 guibg=#090909
highlight! NvimPickerNormal guifg=#000000 guibg=#ededed
highlight! NvimPickerBorder guifg=#d5d5d5 guibg=#ededed
highlight! NvimPickerSelected guifg=#000000 guibg=#e0e0e0 gui=NONE
highlight! NvimPickerHeader guifg=#000000 guibg=#ededed gui=NONE
highlight! NvimPickerHeaderBorder guifg=#d5d5d5 guibg=#ededed
" Floating windows
highlight! FloatBorder guifg=#d5d5d5 guibg=#ededed
highlight! FloatTitle guifg=#000000 guibg=#ededed gui=NONE
highlight! NormalFloat guifg=#000000 guibg=#ededed
highlight! FloatShadow guibg=#e8e8e8 blend=80
highlight! FloatShadowThrough guibg=#e8e8e8 blend=100
" Variable and property links
highlight! link @variable.member Identifier
highlight! link @variable.member.lua Identifier
highlight! link @property.lua Identifier
highlight! link @field.lua Identifier
highlight! @variable.member.builtin guifg=#000000
highlight! @config guifg=#000000
highlight! link @method.call Identifier
highlight! link @method Identifier
highlight! link @label.lua Identifier
highlight! @variable.builtin guifg=#000000
highlight! @namespace.lua guifg=#000000
highlight! @module.builtin guifg=#000000
highlight! @variable guifg=#000000
highlight! DiffAdd guifg=#000000 guibg=#d4f0d4
highlight! DiffChange guifg=#000000 guibg=#f0f0d4
highlight! DiffDelete guifg=#000000 guibg=#f0d4d4
highlight! DiffText guifg=#000000 guibg=#e8e8d4 gui=NONE
highlight! PreProc guifg=#000000
highlight! Statement guifg=#000000
" Line numbers
highlight! LineNr guifg=#999999 guibg=#ededed
highlight! CursorLineNr guifg=#666666 guibg=#ededed gui=NONE
highlight! DiagnosticError guifg=#c73c3f guibg=NONE
highlight! DiagnosticWarn guifg=#c77c3f guibg=NONE
highlight! DiagnosticInfo guifg=#007d9c guibg=NONE
highlight! DiagnosticHint guifg=#5a7d6b guibg=NONE
highlight! DiagnosticUnderlineError gui=underline guisp=#c73c3f
highlight! DiagnosticUnderlineWarn gui=underline guisp=#c77c3f
highlight! DiagnosticUnderlineInfo gui=underline guisp=#007d9c
highlight! DiagnosticUnderlineHint gui=underline guisp=#5a7d6b
highlight! LspReferenceText guibg=#d4e8f0 guifg=NONE
highlight! LspReferenceRead guibg=#d4e8f0 guifg=NONE
highlight! LspReferenceWrite guibg=#c4dce8 guifg=NONE
highlight! Visual guibg=#d4e8f0 guifg=NONE
highlight! VisualNOS guibg=#d4e8f0 guifg=NONE


