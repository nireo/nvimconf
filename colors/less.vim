" less is more
set background=dark
runtime! colors/default.vim
let g:colors_name = 'less'

" Set black background
highlight Normal guibg=#0A0A0A ctermbg=0

" primitives
highlight! Function guifg=#B294BB
highlight! Identifier guifg=NvimLightGrey2
highlight! Delimiter guifg=NvimLightGrey2
highlight! Directory guifg=NvimLightGrey2 cterm=bold gui=bold
highlight! Module cterm=italic gui=italic
highlight! Special guifg=NvimLightBlue
highlight! link Namespace Module
highlight! Type guifg=#708090 cterm=bold gui=bold
highlight! Number guifg=#75A0A0 ctermfg=60
highlight! link Float Number
highlight! link Constructor Type
highlight! link Character String

highlight! Keyword guifg=#8AA3C1 ctermfg=67
" 708090

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

" Strings
highlight! String guifg=#A7B39A ctermfg=137
highlight! link @string String

highlight! Comment guifg=#8C8178 ctermfg=65 gui=italic cterm=italic

highlight! Pmenu guibg=#0A0A0A ctermbg=0
highlight! PmenuSel guibg=#1A1A1A ctermbg=233 guifg=#8AA3C1 ctermfg=67
highlight! PmenuSbar guibg=#121212 ctermbg=232
highlight! PmenuThumb guibg=#2A2A2A ctermbg=234

