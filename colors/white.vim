" colors/default.vim
let g:colors_name = 'white'
set background=dark
highlight Normal guifg=#a8b5c0 guibg=#1c1e20
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
highlight! Number guifg=#a8b5c0 ctermfg=60
highlight! link Float Number
highlight! link Constructor Type
highlight! link Character String
highlight! Constant guifg=#a8b5c0
highlight! Operator guifg=#a8b5c0
highlight! ColorColumn guibg=#16181a
highlight! String guifg=#a8b5c0
highlight! Keyword guifg=#a8b5c0 ctermfg=67 gui=NONE
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
highlight! Comment guifg=#5a6670 ctermfg=65 gui=italic cterm=italic
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
" Line numbers - light blue like Acme/Go Playground
highlight! LineNr guifg=#7a8c9c guibg=#1c1e20
highlight! CursorLineNr guifg=#8a9cac guibg=#1c1e20 gui=NONE
