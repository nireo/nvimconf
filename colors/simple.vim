set background=dark
runtime! colors/default.vim
let g:colors_name = 'bw_simple'

highlight Normal guifg=#B0B0B0 guibg=#070707

highlight StatusLine guifg=#070707 guibg=#B0B0B0
highlight StatusLineNC guifg=#606060 guibg=#121212
highlight ColorColumn guibg=#1A1A1A
highlight CursorLine guibg=#181818
" highlight Visual guibg=#303030
highlight Visual guibg=#322940
highlight String guifg=#B4A5C4     " Soft purple-gray

highlight Comment guifg=#9D8BAD gui=italic
highlight Keyword guifg=#A596B4
highlight Type guifg=#8FA4B8

highlight! link Constant Normal
highlight! link Character Normal
highlight! link Number Normal
highlight! link Boolean Normal
highlight! link Float Normal

highlight! link Identifier Normal
highlight! link Function Normal
highlight Function guifg=#EEEEEE

highlight! link Statement Normal
highlight! link Conditional Normal
highlight! link Repeat Normal
highlight! link Label Normal
highlight! link Operator Normal
highlight! link Exception Normal

highlight! link PreProc Normal
highlight! link Include Normal
highlight! link Define Normal
highlight! link Macro Normal
highlight! link PreCondit Normal

highlight! link StorageClass Normal
highlight! link Structure Normal
highlight! link Typedef Normal

highlight! link Special Normal
highlight! link SpecialChar Normal
highlight! link Tag Normal
highlight! link Delimiter Normal
highlight! link SpecialComment Normal
highlight! link Debug Normal
highlight! link Directory Normal
highlight! link Title Normal

" --- TreeSitter / LSP Linking ---
" Map all semantic tokens back to Normal
highlight! link @namespace Normal
highlight! link @module Normal
highlight! link @module.builtin Normal
highlight! link @constructor Normal
highlight! link @identifier Normal
highlight! link @tag.attribute Normal
highlight! link @variable Normal
highlight! link @variable.member Normal
highlight! link @variable.member.lua Normal
highlight! link @property.lua Normal
highlight! link @field.lua Normal
highlight! link @variable.member.builtin Normal
highlight! link @config Normal
highlight! link @label.lua Normal
highlight! link @namespace.lua Normal

highlight! Pmenu guibg=#090909 guifg=#B0B0B0
highlight! PmenuSel guibg=#202020 guifg=#B0B0B0 gui=bold
highlight! PmenuSbar guibg=#121212
highlight! PmenuThumb guibg=#303030

highlight! NvimPickerNormal guifg=#B0B0B0 guibg=#121212
highlight! NvimPickerBorder guifg=#303030 guibg=#121212
highlight! NvimPickerSelected guifg=#B0B0B0 guibg=#202020 gui=bold
highlight! NvimPickerHeader guifg=#B0B0B0 guibg=#121212 gui=bold
highlight! NvimPickerHeaderBorder guifg=#303030 guibg=#121212

highlight! FloatBorder guifg=#303030 guibg=#090909
highlight! FloatTitle guifg=#B0B0B0 guibg=#090909 gui=bold
highlight! NormalFloat guifg=#B0B0B0 guibg=#090909
highlight! FloatShadow guibg=#000000 blend=80
highlight! FloatShadowThrough guibg=#000000 blend=100
