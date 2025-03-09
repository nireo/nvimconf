" less is more
set background=dark
runtime! colors/default.vim
let g:colors_name = 'less'

" Set black background
highlight Normal guibg=#080808 ctermbg=0

" primitives
highlight! Function guifg=NvimLightGrey2
highlight! Identifier guifg=NvimLightGrey2
highlight! Delimiter guifg=NvimLightGrey2
highlight! Directory guifg=NvimLightGrey2 cterm=bold gui=bold
highlight! Module cterm=italic gui=italic
highlight! Special guifg=NvimLightBlue
highlight! link Namespace Module
highlight! Type cterm=bold gui=bold
highlight! link Constructor Type
highlight! link Character String

highlight! Comment guifg=#8cc85f ctermfg=71

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

highlight StatusLine guifg=#bdbdbd guibg=#111111 gui=NONE ctermfg=15 ctermbg=236
highlight StatusLineNC guifg=#9e9e9e guibg=#181818 gui=NONE ctermfg=249 ctermbg=235
