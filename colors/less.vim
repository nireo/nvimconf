set background=dark
runtime! colors/default.vim
let g:colors_name = 'less'

" Set black background
" highlight Normal guifg=#B0B0B0 guibg=#14161B ctermbg=0
highlight Normal guifg=#B0B0B0 guibg=#060606 ctermbg=0
highlight StatusLine guifg=#B0B0B0 guibg=#090909 ctermbg=0
highlight StatusLineNC guifg=#B0B0B0 guibg=#121212 ctermbg=0

" primitives
"highlight! Function guifg=#88afa2
highlight! Function guifg=#829b82
" #B294BB
highlight! Title guifg=#B294BB
highlight! Identifier guifg=#B0B0B0
highlight! Delimiter guifg=#B0B0B0
highlight! Directory guifg=#88afa2
highlight! Module cterm=italic gui=italic
highlight! Special guifg=#88afa2
highlight! link Namespace Module
" highlight! Type guifg=#A68DB8  " lavender
" highlight! Type guifg=#B5AA88 " soft blue
highlight! Type guifg=#B5AA88 " soft blue
highlight! Number guifg=#7A8A9A ctermfg=60
highlight! link Float Number
highlight! link Constructor Type
highlight! link Character String
highlight! Constant guifg=#7A8A9A
highlight! Operator guifg=#B294BB
highlight! ColorColumn guibg=#0A0A0A
" highlight! String guifg=#A7B39A ctermfg=137
" highlight! String guifg=#C9A96E
"highlight! String guifg=#B8C78A  " slightly brighter green
highlight! String guifg=#9CAF88  " slightly brighter green

highlight! Keyword guifg=#8AA3C1 ctermfg=67

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

" highlight! Comment guifg=#7D8A6F ctermfg=65 gui=italic cterm=italic
highlight! Comment guifg=#767676 ctermfg=65 gui=italic cterm=italic

highlight! Pmenu guibg=#121212 ctermbg=0
highlight! PmenuSel guibg=#1A1A1A ctermbg=233 guifg=#8AA3C1 ctermfg=67
highlight! PmenuSbar guibg=#121212 ctermbg=232
highlight! PmenuThumb guibg=#2A2A2A ctermbg=234

highlight! NvimPickerNormal guifg=NvimLightGrey2 guibg=#121212
highlight! NvimPickerBorder guifg=#2A2A2A guibg=#121212
highlight! NvimPickerSelected guifg=#8AA3C1 guibg=#1A1A1A gui=bold
highlight! NvimPickerHeader guifg=#708090 guibg=#121212 gui=bold
highlight! NvimPickerHeaderBorder guifg=#2A2A2A guibg=#121212

highlight! FloatBorder guifg=#2A2A2A guibg=#090909
highlight! FloatTitle guifg=#708090 guibg=#090909 gui=bold
highlight! NormalFloat guifg=NvimLightGrey2 guibg=#090909
highlight! FloatShadow guibg=#050505 blend=80
highlight! FloatShadowThrough guibg=#050505 blend=100

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

