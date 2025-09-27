set background=dark
runtime! colors/default.vim
let g:colors_name = 'simple_bw'

" Set black background
highlight Normal guifg=#B0B0B0 guibg=#090909
highlight StatusLine guifg=#101010 guibg=#B0B0B0
highlight StatusLineNC guifg=#B0B0B0 guibg=#121212

" primitives - converted to black and white
highlight! Function guifg=#FFFFFF
highlight! Title guifg=#FFFFFF gui=bold
highlight! Identifier guifg=#B0B0B0
highlight! Delimiter guifg=#B0B0B0
highlight! Directory guifg=#FFFFFF
highlight! Module cterm=italic gui=italic guifg=#CCCCCC
highlight! Special guifg=#FFFFFF
highlight! link Namespace Module
highlight! Type guifg=#DDDDDD
highlight! Number guifg=#888888 ctermfg=60
highlight! link Float Number
highlight! link Constructor Type
highlight! link Character String
highlight! Constant guifg=#888888
highlight! Operator guifg=#FFFFFF
highlight! ColorColumn guibg=#0A0A0A

" Keep original colors for strings and comments
highlight! String guifg=#88B588
highlight! Keyword guifg=#FFFFFF ctermfg=67

" treesitter
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

" Comments - keep original color
highlight! Comment guifg=#6A7A6A ctermfg=65 gui=italic cterm=italic
highlight! TodoFgTODO guifg=#A8B896 ctermfg=65 gui=italic cterm=italic
highlight! TodoBgTODO guifg=#090909 guibg=#A8B896 ctermfg=65 gui=italic cterm=italic

" Popup menus
highlight! Pmenu guibg=#090909 ctermbg=0
highlight! PmenuSel guibg=#1D1D1D ctermbg=233 guifg=#FFFFFF ctermfg=67
highlight! PmenuSbar guibg=#121212 ctermbg=232
highlight! PmenuThumb guibg=#2A2A2A ctermbg=234

" Picker UI
highlight! NvimPickerNormal guifg=NvimLightGrey2 guibg=#121212
highlight! NvimPickerBorder guifg=#2A2A2A guibg=#121212
highlight! NvimPickerSelected guifg=#FFFFFF guibg=#1D1D1D gui=bold
highlight! NvimPickerHeader guifg=#CCCCCC guibg=#121212 gui=bold
highlight! NvimPickerHeaderBorder guifg=#2A2A2A guibg=#121212

" Floating windows
highlight! FloatBorder guifg=#2A2A2A guibg=#090909
highlight! FloatTitle guifg=#CCCCCC guibg=#090909 gui=bold
highlight! NormalFloat guifg=NvimLightGrey2 guibg=#090909
highlight! FloatShadow guibg=#050505 blend=80
highlight! FloatShadowThrough guibg=#050505 blend=100

" Variable and property links - converted to black and white
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
