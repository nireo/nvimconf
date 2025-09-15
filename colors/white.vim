set background=dark
runtime! colors/default.vim
let g:colors_name = 'white'

" Base colors
highlight Normal guifg=#B0B0B0 guibg=#090909
highlight StatusLine guifg=#101010 guibg=#B0B0B0
highlight StatusLineNC guifg=#B0B0B0 guibg=#121212

" Most syntax elements - muted white
highlight! Function guifg=#B0B0B0
highlight! Title guifg=#B0B0B0
highlight! Identifier guifg=#B0B0B0
highlight! Delimiter guifg=#B0B0B0
highlight! Directory guifg=#B0B0B0
highlight! Module cterm=italic gui=italic guifg=#B0B0B0
highlight! Special guifg=#B0B0B0
highlight! link Namespace Module
highlight! Type guifg=#B0B0B0
highlight! Number guifg=#B0B0B0 ctermfg=60
highlight! link Float Number
highlight! link Constructor Type
highlight! link Character String
highlight! Constant guifg=#B0B0B0
highlight! Operator guifg=#B0B0B0
highlight! ColorColumn guibg=#0A0A0A
highlight! Keyword guifg=#B0B0B0 ctermfg=67

" Keep original colors for strings, comments, and todos
highlight! String guifg=#88B588
highlight! Comment guifg=#6A7A6A ctermfg=65 gui=italic cterm=italic
highlight! TodoFgTODO guifg=#A8B896 ctermfg=65 gui=italic cterm=italic
highlight! TodoBgTODO guifg=#090909 guibg=#A8B896 ctermfg=65 gui=italic cterm=italic

" TreeSitter links - all muted white except strings/comments
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

" UI elements
highlight! Pmenu guibg=#090909 ctermbg=0
highlight! PmenuSel guibg=#1D1D1D ctermbg=233 guifg=#8AC18A ctermfg=67
highlight! PmenuSbar guibg=#121212 ctermbg=232
highlight! PmenuThumb guibg=#2A2A2A ctermbg=234
highlight! NvimPickerNormal guifg=NvimLightGrey2 guibg=#121212
highlight! NvimPickerBorder guifg=#2A2A2A guibg=#121212
highlight! NvimPickerSelected guifg=#8AC18A guibg=#1D1D1D gui=bold
highlight! NvimPickerHeader guifg=#708060 guibg=#121212 gui=bold
highlight! NvimPickerHeaderBorder guifg=#2A2A2A guibg=#121212
highlight! FloatBorder guifg=#2A2A2A guibg=#090909
highlight! FloatTitle guifg=#708060 guibg=#090909 gui=bold
highlight! NormalFloat guifg=NvimLightGrey2 guibg=#090909
highlight! FloatShadow guibg=#050505 blend=80
highlight! FloatShadowThrough guibg=#050505 blend=100

" Variable and method highlights - all muted white
highlight! link @variable.member Identifier
highlight! link @variable.member.lua Identifier
highlight! link @property.lua Identifier
highlight! link @field.lua Identifier
highlight! @variable.member.builtin guifg=#B0B0B0
highlight! @config guifg=#B0B0B0
highlight! link @method.call Identifier
highlight! link @method Identifier
highlight! link @label.lua Identifier
highlight! @variable.builtin guifg=#B0B0B0
highlight! @namespace.lua guifg=#B0B0B0
highlight! @module.builtin guifg=#B0B0B0
highlight! @variable guifg=#B0B0B0
