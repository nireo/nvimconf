runtime! colors/default.vim
let g:colors_name = 'white'
set background=dark
highlight Normal guifg=#D6CFC4 guibg=#101010
highlight StatusLine guifg=#D6CFC4 guibg=#232323
highlight StatusLineNC guifg=#D6CFC4 guibg=#303030
" highlight! Function guifg=#D6CFC4
highlight! Function guifg=#E8E8E0
highlight! Title guifg=#D6CFC4
highlight! Identifier guifg=#D6CFC4
highlight! Delimiter guifg=#D6CFC4
highlight! Directory guifg=#D6CFC4
highlight! Module cterm=italic gui=italic
highlight! Special guifg=#D6CFC4
highlight! link Namespace Module
"highlight! Type guifg=#D6CFC4
highlight! Type guifg=#C0C8D0
highlight! Number guifg=#D6CFC4 ctermfg=60
highlight! link Float Number
highlight! link Constructor Type
highlight! link Character String
highlight! Constant guifg=#D6CFC4
highlight! Operator guifg=#D6CFC4
highlight! ColorColumn guibg=#0A0A0A
highlight! String guifg=#7A9B7A
" highlight! Keyword guifg=#D6CFC4 ctermfg=67
highlight! Keyword guifg=#A8B4C8 ctermfg=67
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
highlight! Comment guifg=#7A7A7A ctermfg=65 gui=italic cterm=italic
highlight! TodoFgTODO guifg=#BED1A8 ctermfg=65 gui=italic cterm=italic
highlight! TodoBgTODO guifg=#090909 guibg=#BED1A8 ctermfg=65 gui=italic cterm=italic
highlight! Pmenu guibg=#090909 ctermbg=0
highlight! PmenuSel guibg=#1D1D1D ctermbg=233 guifg=#D6CFC4 ctermfg=67
highlight! PmenuSbar guibg=#121212 ctermbg=232
highlight! PmenuThumb guibg=#2A2A2A ctermbg=234
highlight! NvimPickerNormal guifg=NvimLightGrey2 guibg=#121212
highlight! NvimPickerBorder guifg=#2A2A2A guibg=#121212
highlight! NvimPickerSelected guifg=#D6CFC4 guibg=#1D1D1D gui=bold
highlight! NvimPickerHeader guifg=#D6CFC4 guibg=#121212 gui=bold
highlight! NvimPickerHeaderBorder guifg=#2A2A2A guibg=#121212
" Floating windows
highlight! FloatBorder guifg=#2A2A2A guibg=#090909
highlight! FloatTitle guifg=#D6CFC4 guibg=#090909 gui=bold
highlight! NormalFloat guifg=NvimLightGrey2 guibg=#090909
highlight! FloatShadow guibg=#050505 blend=80
highlight! FloatShadowThrough guibg=#050505 blend=100
" Variable and property links
highlight! link @variable.member Identifier
highlight! link @variable.member.lua Identifier
highlight! link @property.lua Identifier
highlight! link @field.lua Identifier
highlight! @variable.member.builtin guifg=#D6CFC4
highlight! @config guifg=#D6CFC4
highlight! link @method.call Identifier
highlight! link @method Identifier
highlight! link @label.lua Identifier
highlight! @variable.builtin guifg=#D6CFC4
highlight! @namespace.lua guifg=#D6CFC4
highlight! @module.builtin guifg=#D6CFC4
highlight! @variable guifg=#D6CFC4
highlight! DiffAdd guifg=#6B8B6B guibg=#1A2B1A
highlight! DiffChange guifg=#7B7B6B guibg=#252520
highlight! DiffDelete guifg=#8B6B6B guibg=#2B1A1A
highlight! DiffText guifg=#8B8B7B guibg=#2B2B20 gui=bold
