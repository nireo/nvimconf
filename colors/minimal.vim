set background=dark

runtime! colors/default.vim
let g:colors_name = 'minimal'

highlight Normal guifg=#B0B0B0 guibg=#090909 ctermbg=0
highlight StatusLine guifg=#B0B0B0 guibg=#0F0F0F ctermbg=0
highlight StatusLineNC guifg=#B0B0B0 guibg=#0F0F0F ctermbg=0

highlight! Keyword guifg=#8AA3C1 ctermfg=67

highlight! Delimiter guifg=#B294BB
highlight! Operator guifg=#B294BB
highlight! Number guifg=#75A0A0 ctermfg=60
highlight! String guifg=#A7B39A ctermfg=137
highlight! ColorColumn guibg=#090909
highlight! Function guifg=#C1B48A

highlight! Pmenu guibg=#090909 ctermbg=0
highlight! PmenuSel guibg=#1C1C1C ctermbg=233 guifg=#8AA3C1 ctermfg=67
highlight! PmenuSbar guibg=#121212 ctermbg=232
highlight! PmenuThumb guibg=#2A2A2A ctermbg=234

" primitives

highlight! Identifier guifg=NvimLightGrey2
highlight! Directory guifg=NvimLightGrey2 cterm=bold gui=bold
highlight! Module cterm=italic gui=italic
highlight! Special guifg=NvimLightBlue
highlight! link Namespace Module
highlight! Type cterm=bold gui=bold
highlight! link Constructor Type
highlight! link Character String

" treesitter
highlight! link @namespace Namespace
highlight! link @module Module
highlight! link @string.special.path Underlined
highlight! link @constructor Constructor

highlight! link @type.builtin @type
highlight! link @variable.builtin @variable
highlight! link @constant.builtin @constant
highlight! link @function.builtin @function
highlight! link @tag.attribute @attribute


highlight! FloatBorder guifg=#2A2A2A guibg=#090909
highlight! FloatTitle guifg=#708090 guibg=#090909 gui=bold
highlight! NormalFloat guifg=NvimLightGrey2 guibg=#090909

" Module / Namespace -> Italic Teal
highlight! Module guifg=#75A0A0 ctermfg=60 gui=italic cterm=italic
highlight! link @module Module
highlight! link Namespace Module " Keep existing link or redefine if needed
highlight! link @namespace Module " Keep existing link or redefine if needed

" Type / Constructor -> Bold Blue
highlight! Type guifg=#8AA3C1 ctermfg=67 gui=bold cterm=bold
highlight! link @type Type
highlight! link @type.builtin @type " Keep existing link
highlight! link Constructor Type " Keep existing link or redefine if needed
highlight! link @constructor Type " Keep existing link or redefine if needed

highlight! Constant guifg=#75A0A0
