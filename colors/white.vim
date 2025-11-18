set background=dark
runtime! colors/default.vim
let g:colors_name = 'white'

" highlight Normal guifg=#a8b5c0 guibg=#16181a
" highlight Normal guifg=#a8b5c0 guibg=#121214  " was #1b1b1d
highlight Normal guifg=#a8b5c0 guibg=#0e0e10
highlight StatusLine guifg=#a8b5c0 guibg=#232323
highlight StatusLineNC guifg=#a8b5c0 guibg=#303030
highlight! Function guifg=#a8b5c0 gui=NONE
highlight! Title guifg=#a8b5c0
highlight! Identifier guifg=#a8b5c0
highlight! Delimiter guifg=#a8b5c0
highlight! Directory guifg=#a8b5c0 gui=NONE
highlight! Module cterm=italic gui=italic
highlight! Special guifg=#a8b5c0
highlight! link Namespace Module
highlight! Type guifg=#a8b5c0
highlight! link Float Number
highlight! link Constructor Type
highlight! link Character String
" highlight! Constant guifg=#88b89f  " sage green
" highlight! Number guifg=#88b89f
highlight! Constant guifg=#78b8b8 gui=NONE        " Brighter teal-cyan (stands out nicely)
highlight! Number guifg=#78b8b8 ctermfg=60        " Match constants
highlight! WinSeparator guifg=#16181a guibg=#16181a
highlight! Operator guifg=#a8b5c0
highlight! ColorColumn guibg=#16181a
highlight! String guifg=#7a9c8c
highlight! Keyword guifg=#b8c5d0
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
" highlight! Comment guifg=#50b7e0 ctermfg=65 gui=italic cterm=italic
highlight! Comment guifg=#8a9a8a ctermfg=65 gui=italic cterm=italic
highlight! TodoFgTODO guifg=#a8b5c0 ctermfg=65 gui=italic cterm=italic
highlight! TodoBgTODO guifg=#090909 guibg=#a8b5c0 ctermfg=65 gui=italic cterm=italic
highlight! Pmenu guibg=#16181a ctermbg=0
highlight! PmenuSel guibg=#2a2d30 ctermbg=233 guifg=#a8b5c0 ctermfg=67
highlight! PmenuSbar guibg=#16181a ctermbg=232
highlight! PmenuThumb guibg=#2a2d30 ctermbg=234
highlight! NvimPickerNormal guifg=NvimLightGrey2 guibg=#16181a
highlight! NvimPickerBorder guifg=#2a2d30 guibg=#16181a
highlight! NvimPickerSelected guifg=#a8b5c0 guibg=#2a2d30 gui=NONE
highlight! NvimPickerHeader guifg=#a8b5c0 guibg=#16181a gui=NONE
highlight! NvimPickerHeaderBorder guifg=#2a2d30 guibg=#16181a
" Floating windows
highlight! FloatBorder guifg=#2a2d30 guibg=#16181a
highlight! FloatTitle guifg=#a8b5c0 guibg=#16181a gui=NONE
highlight! NormalFloat guifg=NvimLightGrey2 guibg=#16181a
highlight! FloatShadow guibg=#0a0c0e blend=80
highlight! FloatShadowThrough guibg=#0a0c0e blend=100
" Variable and property links
highlight! link @variable.member Identifier
highlight! link @variable.member.lua Identifier
highlight! link @property.lua Identifier
highlight! link @field.lua Identifier
highlight! @variable.member.builtin guifg=#a8b5c0
highlight! @config guifg=#a8b5c0
highlight! link @method.call Identifier
highlight! link @method Identifier
highlight! link @label.lua Identifier
highlight! @variable.builtin guifg=#a8b5c0
highlight! @namespace.lua guifg=#a8b5c0
highlight! @module.builtin guifg=#a8b5c0
highlight! @variable guifg=#a8b5c0
highlight! DiffAdd guifg=#a8b5c0 guibg=#1a2e1a
highlight! DiffChange guifg=#a8b5c0 guibg=#252520
highlight! DiffDelete guifg=#a8b5c0 guibg=#2e1a1a
highlight! DiffText guifg=#a8b5c0 guibg=#2a2a20 gui=NONE
highlight PreProc guifg=#a8b5c0
highlight Statement guifg=#a8b5c0

" Line numbers - light blue like Acme/Go Playground
highlight! LineNr guifg=#7a8c9c guibg=#16181a
highlight! CursorLineNr guifg=#8a9cac guibg=#16181a gui=NONE
highlight! LspReferenceText guibg=#1f3040 guifg=NONE
highlight! LspReferenceRead guibg=#1f3040 guifg=NONE
highlight! LspReferenceWrite guibg=#1a2838 guifg=NONE

highlight! DiffAdd guifg=#a8b5c0 guibg=#1a3a2a gui=NONE
highlight! DiffChange guifg=#a8b5c0 guibg=#3a3a2a gui=NONE
highlight! DiffDelete guifg=#5a6c7c guibg=#3a1a1a gui=NONE
highlight! DiffText guifg=#b8c5d0 guibg=#4a4a2a gui=bold

highlight! NeogitDiffAdd guifg=#a8b5c0 guibg=#1a3a2a
highlight! NeogitDiffAddHighlight guifg=#a8b5c0 guibg=#1a3a2a
highlight! NeogitDiffDelete guifg=#7a8c9c guibg=#3a1a1a
highlight! NeogitDiffDeleteHighlight guifg=#7a8c9c guibg=#3a1a1a
highlight! NeogitDiffContext guifg=#a8b5c0 guibg=NONE
highlight! NeogitDiffContextHighlight guifg=#a8b5c0 guibg=#16181a
highlight! NeogitHunkHeader guifg=#8a9cac guibg=#16181a
highlight! NeogitHunkHeaderHighlight guifg=#8a9cac guibg=#2a2d30

" Visual selection - brighter blue background
highlight! Visual guibg=#1f3040 guifg=NONE
highlight! VisualNOS guibg=#1f3040 guifg=NONE
highlight! MatchParen guifg=#50b7e0 guibg=#2a2d30 gui=bold
highlight! Search guibg=#1f3040 guifg=NONE
highlight! IncSearch guibg=#1f3040 guifg=NONE
highlight! Function guifg=#90b8c8 gui=NONE        " Soft cyan-blue
highlight! Type guifg=#b8c0a8 gui=NONE            " Soft sage (echoes your string color)
highlight! Keyword guifg=#c0b0a8 gui=NONE         " Soft warm grey-beige
highlight! Function guifg=#90b8c8 gui=NONE        " Soft cyan-blue (keeping this - it's great)
highlight! Type guifg=#a8c0b0 gui=NONE            " Soft blue-sage (structural, cool)
highlight! Keyword guifg=#98b0b8 gui=NONE         " Soft steel-blue (control flow)


highlight! Directory guifg=#90b8c8 gui=NONE        " Soft cyan-blue
highlight! Title guifg=#90b8c8 gui=NONE        " Soft cyan-blue
