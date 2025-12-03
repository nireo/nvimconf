runtime! colors/default.vim
let g:colors_name = 'bw'

" This scheme is meant for a dark background
set background=dark

" Base UI (slightly more muted)
highlight Normal guifg=#C0C0C0 guibg=#070707

highlight StatusLine   guifg=#C0C0C0 guibg=#121212
highlight StatusLineNC guifg=#666666 guibg=#000000
highlight ColorColumn  guibg=#141414
highlight CursorLine   guibg=#111111
highlight Visual       guibg=#382642      " muted purple tint

" Syntax – muted accents
highlight String       guifg=#B89AD8      " softer lavender
highlight Comment guifg=#7E9CB5 gui=italic
highlight Keyword      guifg=#B09AE0

highlight Type         guifg=#86B8E0      " softer icy blue
highlight Function     guifg=#FFFFFF      " off-white, less contrast

highlight Directory guifg=#B09AE0

highlight! link Constant Normal
highlight! link Character Normal
highlight! link Number Normal
highlight! link Boolean Normal
highlight! link Float Normal

highlight! link Identifier Normal

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
highlight! link SpecialComment Comment
highlight! link Debug Normal
highlight! link Title Normal

" --- TreeSitter/LSP Linking ---
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

" Popup & floating UI (slightly softened)
highlight! Pmenu       guibg=#0A0A0A guifg=#C8C8C8
highlight! PmenuSel    guibg=#2A2A2A guifg=#F0F0F0 gui=bold
highlight! PmenuSbar   guibg=#151515
highlight! PmenuThumb  guibg=#383838

highlight! NvimPickerNormal        guifg=#C8C8C8 guibg=#141414
highlight! NvimPickerBorder        guifg=#3C3C3C guibg=#141414
highlight! NvimPickerSelected      guifg=#F0F0F0 guibg=#2A2A2A gui=bold
highlight! NvimPickerHeader        guifg=#D8D8D8 guibg=#141414 gui=bold
highlight! NvimPickerHeaderBorder  guifg=#3C3C3C guibg=#141414

highlight! FloatBorder   guifg=#474747 guibg=#0A0A0A
highlight! FloatTitle    guifg=#E6E6E6 guibg=#0A0A0A gui=bold
highlight! NormalFloat   guifg=#C8C8C8 guibg=#0A0A0A
highlight! FloatShadow           guibg=#000000 blend=80
highlight! FloatShadowThrough    guibg=#000000 blend=100

" --- Minimal extra highlighting (muted, same style) ---

" Line numbers & UI borders
highlight LineNr        guifg=#444444 guibg=#070707
highlight CursorLineNr  guifg=#AAAAAA guibg=#070707 gui=bold
highlight NonText       guifg=#2A2A2A guibg=#070707
highlight VertSplit     guifg=#1A1A1A guibg=#070707
highlight SignColumn    guifg=#505050 guibg=#070707

" Search (subtle)
highlight Search        guifg=#E6E6E6 guibg=#274252
highlight IncSearch     guifg=#E6E6E6 guibg=#3A5A6E gui=bold

" TODO / notes
highlight Todo          guifg=#E6E6E6 guibg=#504060 gui=bold

" LSP / diagnostics – muted colors
highlight DiagnosticError guifg=#D88A8A guibg=#0B0707
highlight DiagnosticWarn  guifg=#D3B07A guibg=#0B0907
highlight DiagnosticInfo  guifg=#8FB6D8 guibg=#07090B
highlight DiagnosticHint  guifg=#8AB89A guibg=#070B09

highlight DiagnosticUnderlineError gui=undercurl guisp=#D88A8A
highlight DiagnosticUnderlineWarn  gui=undercurl guisp=#D3B07A
highlight DiagnosticUnderlineInfo  gui=undercurl guisp=#8FB6D8
highlight DiagnosticUnderlineHint  gui=undercurl guisp=#8AB89A
