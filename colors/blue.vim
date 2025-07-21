runtime! colors/default.vim
let g:colors_name = 'blue'
set background=dark

" Clear existing highlights
highlight clear

" Base colors - muted warm grays and blues with darker background
highlight Normal guifg=#C2B8B0 guibg=#0f1920 ctermbg=0
highlight StatusLine guifg=#D0C4BC guibg=#1a2530 ctermbg=0
highlight StatusLineNC guifg=#9B9088 guibg=#151e28 ctermbg=0

" Primitives - using the same structure as your original
highlight! Function guifg=#7A8EA8
highlight! Title guifg=#D0C4BC gui=bold
highlight! Identifier guifg=#C2B8B0
highlight! Delimiter guifg=#A8A098
highlight! Directory guifg=#87A087
highlight! Module cterm=italic gui=italic guifg=#9B8FA8
highlight! Special guifg=#7A8EA8
highlight! link Namespace Module

" Types and constants
highlight! Type guifg=#9B8FA8
highlight! Number guifg=#B8A598 ctermfg=60
highlight! link Float Number
highlight! link Constructor Type
highlight! link Character String
highlight! Constant guifg=#B8A598
highlight! Operator guifg=#8A9BB0

" Background elements
highlight! ColorColumn guibg=#243040

" Strings and keywords
highlight! String guifg=#8BA88B ctermfg=137
highlight! Keyword guifg=#8A9BB0 ctermfg=67

" Comments
highlight! Comment guifg=#7A746B ctermfg=65 gui=italic cterm=italic

" Popup menus
highlight! Pmenu guibg=#243040 ctermbg=0 guifg=#C2B8B0
highlight! PmenuSel guibg=#2a3540 ctermbg=233 guifg=#D0C4BC ctermfg=67
highlight! PmenuSbar guibg=#1a252f ctermbg=232
highlight! PmenuThumb guibg=#3a4550 ctermbg=234

" Nvim picker
highlight! NvimPickerNormal guifg=#C2B8B0 guibg=#243040
highlight! NvimPickerBorder guifg=#4a5560 guibg=#243040
highlight! NvimPickerSelected guifg=#D0C4BC guibg=#2a3540 gui=bold
highlight! NvimPickerHeader guifg=#9B9088 guibg=#243040 gui=bold
highlight! NvimPickerHeaderBorder guifg=#4a5560 guibg=#243040

" Floating windows
highlight! FloatBorder guifg=#4a5560 guibg=#2a3540
highlight! FloatTitle guifg=#9B9088 guibg=#2a3540 gui=bold
highlight! NormalFloat guifg=#C2B8B0 guibg=#2a3540
highlight! FloatShadow guibg=#0f1a20 blend=80
highlight! FloatShadowThrough guibg=#0f1a20 blend=100

" Additional syntax highlighting
highlight! PreProc guifg=#A89BA8
highlight! StorageClass guifg=#9B8FA8
highlight! Structure guifg=#9B8FA8
highlight! Typedef guifg=#9B8FA8
highlight! Statement guifg=#8A9BB0
highlight! Conditional guifg=#8A9BB0
highlight! Repeat guifg=#8A9BB0
highlight! Label guifg=#8A9BB0
highlight! Exception guifg=#B8968A
highlight! Error guifg=#B8968A guibg=#2a1a18
highlight! ErrorMsg guifg=#B8968A guibg=#2a1a18
highlight! WarningMsg guifg=#B8A896
highlight! Todo guifg=#B8A896 guibg=#2a2518 gui=bold

" Treesitter links
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

" Variable and property highlighting
highlight! link @variable.member Identifier
highlight! link @variable.member.lua Identifier
highlight! link @property.lua Identifier
highlight! link @field.lua Identifier
highlight! @variable.member.builtin guifg=#C2B8B0
highlight! @config guifg=#C2B8B0
highlight! link @method.call Identifier
highlight! link @method Identifier
highlight! link @label.lua Identifier
highlight! @variable.builtin guifg=#C2B8B0
highlight! @namespace.lua guifg=#C2B8B0
highlight! @module.builtin guifg=#C2B8B0
highlight! @variable guifg=#C2B8B0
