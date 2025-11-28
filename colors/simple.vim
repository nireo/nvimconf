set background=dark
runtime! colors/default.vim
let g:colors_name = 'bw_simple'

" --- Main Interface ---
" Everything text-related defaults to this single color
highlight Normal guifg=#B0B0B0 guibg=#101010

" --- UI Elements (Keep these distinct for usability) ---
highlight StatusLine guifg=#101010 guibg=#B0B0B0
highlight StatusLineNC guifg=#606060 guibg=#121212
highlight ColorColumn guibg=#1A1A1A
highlight CursorLine guibg=#181818
highlight Visual guibg=#303030

" --- Syntax Flattening ---
" Link everything to Normal to enforce the "one color" rule
" highlight! link Comment Normal
" highlight! Comment     guifg=#8a8a8a gui=italic cterm=italic
highlight Comment guifg=#98C379 gui=italic
highlight! link Constant Normal
highlight! link String Normal
highlight! link Character Normal
highlight! link Number Normal
highlight! link Boolean Normal
highlight! link Float Normal

highlight! link Identifier Normal
highlight! link Function Normal

highlight! link Statement Normal
highlight! link Conditional Normal
highlight! link Repeat Normal
highlight! link Label Normal
highlight! link Operator Normal
highlight! link Keyword Normal
highlight! link Exception Normal

highlight! link PreProc Normal
highlight! link Include Normal
highlight! link Define Normal
highlight! link Macro Normal
highlight! link PreCondit Normal

highlight! link Type Normal
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
highlight! link @string.special.path Normal
highlight! link @constructor Normal
highlight! link @identifier Normal
highlight! link @type.builtin Normal
highlight! link @variable.builtin Normal
highlight! link @constant.builtin Normal
highlight! link @function.builtin Normal
highlight! link @tag.attribute Normal
highlight! link @keyword.function Normal
highlight! link @keyword.operator Normal
highlight! link @keyword.return Normal
highlight! link @string Normal
highlight! link @variable Normal
highlight! link @variable.member Normal
highlight! link @variable.member.lua Normal
highlight! link @property.lua Normal
highlight! link @field.lua Normal
highlight! link @variable.member.builtin Normal
highlight! link @config Normal
highlight! link @method.call Normal
highlight! link @method Normal
highlight! link @label.lua Normal
highlight! link @variable.builtin Normal
highlight! link @namespace.lua Normal
highlight! link @module.builtin Normal

" --- Specific UI Overrides (Menus/Popups) ---
" These need to be visible against the background, but we can keep the text neutral
highlight! Pmenu guibg=#090909 guifg=#B0B0B0
highlight! PmenuSel guibg=#202020 guifg=#B0B0B0 gui=bold
highlight! PmenuSbar guibg=#121212
highlight! PmenuThumb guibg=#303030

" Picker / Telescope
highlight! NvimPickerNormal guifg=#B0B0B0 guibg=#121212
highlight! NvimPickerBorder guifg=#303030 guibg=#121212
highlight! NvimPickerSelected guifg=#B0B0B0 guibg=#202020 gui=bold
highlight! NvimPickerHeader guifg=#B0B0B0 guibg=#121212 gui=bold
highlight! NvimPickerHeaderBorder guifg=#303030 guibg=#121212

" Floating windows
highlight! FloatBorder guifg=#303030 guibg=#090909
highlight! FloatTitle guifg=#B0B0B0 guibg=#090909 gui=bold
highlight! NormalFloat guifg=#B0B0B0 guibg=#090909
highlight! FloatShadow guibg=#000000 blend=80
highlight! FloatShadowThrough guibg=#000000 blend=100
