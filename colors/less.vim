set background=dark
runtime! colors/default.vim
let g:colors_name = 'less'

" Set black background
highlight Normal guifg=#B0B0B0 guibg=#0D0D0D ctermbg=0

" primitives
highlight! Function guifg=#B294BB
highlight! Title guifg=#B294BB
highlight! Identifier guifg=#B0B0B0
highlight! Delimiter guifg=#B0B0B0
highlight! Directory guifg=#B0B0B0 cterm=bold gui=bold
highlight! Module cterm=italic gui=italic
highlight! Special guifg=NvimLightBlue
highlight! link Namespace Module
highlight! Type guifg=#708090 cterm=bold gui=bold
highlight! Number guifg=#75A0A0 ctermfg=60
highlight! link Float Number
highlight! link Constructor Type
highlight! link Character String
highlight! Constant guifg=#75A0A0
highlight! Operator guifg=#B294BB
highlight! ColorColumn guibg=#0A0A0A

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
highlight! String guifg=#A7B39A ctermfg=137
highlight! link @string String

highlight! Comment guifg=#7D8A6F ctermfg=65 gui=italic cterm=italic

highlight! Pmenu guibg=#121212 ctermbg=0
highlight! PmenuSel guibg=#1A1A1A ctermbg=233 guifg=#8AA3C1 ctermfg=67
highlight! PmenuSbar guibg=#121212 ctermbg=232
highlight! PmenuThumb guibg=#2A2A2A ctermbg=234

highlight! TelescopeNormal guifg=NvimLightGrey2 guibg=#121212
highlight! TelescopeBorder guifg=#2A2A2A guibg=#121212
highlight! TelescopeSelection guifg=#8AA3C1 guibg=#1A1A1A gui=bold
highlight! TelescopeSelectionCaret guifg=#B294BB guibg=#1A1A1A
highlight! TelescopePromptTitle guifg=#708090 guibg=#121212 gui=bold
highlight! TelescopePreviewTitle guifg=#708090 guibg=#121212 gui=bold
highlight! TelescopeResultsTitle guifg=#708090 guibg=#121212 gui=bold

highlight! TelescopePromptNormal guifg=NvimLightGrey2 guibg=#121212
highlight! TelescopePromptBorder guifg=#2A2A2A guibg=#121212
highlight! TelescopePromptPrefix guifg=#A7B39A guibg=#121212
highlight! TelescopePromptCounter guifg=#8C8178 guibg=#121212

highlight! TelescopeResultsNormal guifg=NvimLightGrey2 guibg=#121212
highlight! TelescopeResultsBorder guifg=#2A2A2A guibg=#121212
highlight! TelescopeResultsComment guifg=#8C8178 guibg=#121212 gui=italic
highlight! TelescopeResultsSpecialComment guifg=#8C8178 guibg=#121212 gui=italic

highlight! TelescopePreviewNormal guifg=NvimLightGrey2 guibg=#121212
highlight! TelescopePreviewBorder guifg=#2A2A2A guibg=#121212

highlight! TelescopeMatching guifg=#B294BB gui=bold

highlight! NvimPickerNormal guifg=NvimLightGrey2 guibg=#121212
highlight! NvimPickerBorder guifg=#2A2A2A guibg=#121212
highlight! NvimPickerSelected guifg=#8AA3C1 guibg=#1A1A1A gui=bold
highlight! NvimPickerHeader guifg=#708090 guibg=#121212 gui=bold
highlight! NvimPickerHeaderBorder guifg=#2A2A2A guibg=#121212

highlight! FloatBorder guifg=#2A2A2A guibg=#121212
highlight! FloatTitle guifg=#708090 guibg=#121212 gui=bold
highlight! NormalFloat guifg=NvimLightGrey2 guibg=#121212
highlight! FloatShadow guibg=#050505 blend=80
highlight! FloatShadowThrough guibg=#050505 blend=100

highlight! link @variable.member Identifier
highlight! link @variable.member.lua Identifier
highlight! link @property.lua Identifier
highlight! link @field.lua Identifier


highlight! @variable.member.builtin guifg=#B0B0B0
" highlight! @lsp guifg=#B0B0B0
" highlight! @lsp.mod guifg=#B0B0B0
highlight! @config guifg=#B0B0B0
highlight! link @method.call Identifier
highlight! link @method Identifier
highlight! link @label.lua Identifier
highlight! @variable.builtin guifg=#B0B0B0
highlight! @namespace.lua guifg=#B0B0B0

highlight! @module.builtin guifg=#B0B0B0
highlight! @variable guifg=#B0B0B0
