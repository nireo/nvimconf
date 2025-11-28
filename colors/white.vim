set background=dark
runtime! colors/default.vim
let g:colors_name = 'white'

" ── Core UI ───────────────────────────────────────────────────────────────────
highlight Normal       guifg=#f2f2f2 guibg=#050505

highlight StatusLine   guifg=#f2f2f2 guibg=#151515
highlight StatusLineNC guifg=#a0a0a0 guibg=#0a0a0a

highlight WinSeparator guifg=#050505 guibg=#050505
highlight ColorColumn  guibg=#131313

" Line numbers
highlight LineNr       guifg=#555555 guibg=#050505
highlight CursorLineNr guifg=#ffffff guibg=#050505 gui=NONE

" ── Syntax: base neutrals ────────────────────────────────────────────────────
highlight! Identifier  guifg=#e6e6e6 gui=NONE
highlight! Delimiter   guifg=#e6e6e6 gui=NONE
highlight! Operator    guifg=#e6e6e6 gui=NONE
highlight! Directory   guifg=#a8c4ff gui=NONE
highlight! Title       guifg=#a8c4ff gui=NONE

highlight! Module      gui=italic
highlight! Special     guifg=#e6e6e6 gui=NONE
highlight! PreProc     guifg=#e6e6e6 gui=NONE

" Types & keywords (subtle blue accent)
highlight! Type        guifg=#7fb0ff gui=NONE
highlight! Keyword     guifg=#7fb0ff gui=NONE
highlight! Statement   guifg=#dcdcdc gui=NONE
highlight! Type          guifg=#8a9ec6 gui=NONE

" ── Comments / text tone ─────────────────────────────────────────────────────
highlight! Comment     guifg=#8a8a8a gui=italic cterm=italic

highlight! TodoFgTODO  guifg=#050505 guibg=NONE gui=bold
highlight! TodoBgTODO  guifg=#050505 guibg=#e5c664 gui=bold

" ── Colorful syntax (minimal teal / blue / yellow) ───────────────────────────
" Strings: soft teal
highlight! String      guifg=#3aa8a0

" Constants / numbers: soft cyan-blue
highlight! Constant    guifg=#6fb8d8 gui=NONE
highlight! Number      guifg=#6fb8d8

" Functions: neutral-light with slight teal
highlight! Function    guifg=#dff8f4 gui=NONE

" Keywords: keep blue
highlight! Keyword     guifg=#7fb0ff gui=NONE

" ── Search / match / visual ──────────────────────────────────────────────────
highlight! Visual      guibg=#202020 guifg=NONE
highlight! VisualNOS   guibg=#202020 guifg=NONE

highlight! Search      guibg=#303030 guifg=#ffffff gui=NONE
highlight! IncSearch   guibg=#404040 guifg=#ffffff gui=NONE

highlight! MatchParen  guifg=#ffffff guibg=#404040 gui=bold

" ── Popup menu ───────────────────────────────────────────────────────────────
highlight! Pmenu       guifg=#f2f2f2 guibg=#101010
highlight! PmenuSel    guifg=#f2f2f2 guibg=#333333
highlight! PmenuSbar   guibg=#161616
highlight! PmenuThumb  guibg=#333333

" ── Floating windows ─────────────────────────────────────────────────────────
highlight! FloatBorder        guifg=#303030 guibg=#101010
highlight! FloatTitle         guifg=#f2f2f2 guibg=#101010
highlight! NormalFloat        guifg=#f2f2f2 guibg=#101010
highlight! FloatShadow        guibg=#000000 blend=80
highlight! FloatShadowThrough guibg=#000000 blend=100

" ── LSP references ───────────────────────────────────────────────────────────
highlight! LspReferenceText  guibg=#151515
highlight! LspReferenceRead  guibg=#151515
highlight! LspReferenceWrite guibg=#1f1f1f

" ── Diff / Git (very muted, mostly gray) ─────────────────────────────────────
highlight! DiffAdd      guifg=#e6ffe6 guibg=#102015
highlight! DiffChange   guifg=#f2f2f2 guibg=#202020
highlight! DiffDelete   guifg=#ffe6e6 guibg=#201010
highlight! DiffText     guifg=#ffffff guibg=#303030 gui=bold

" Neogit
highlight! NeogitDiffAdd              guifg=#e6ffe6 guibg=#102015
highlight! NeogitDiffAddHighlight     guifg=#e6ffe6 guibg=#102015
highlight! NeogitDiffDelete           guifg=#ffe6e6 guibg=#201010
highlight! NeogitDiffDeleteHighlight  guifg=#ffe6e6 guibg=#201010
highlight! NeogitDiffContext          guifg=#f2f2f2 guibg=NONE
highlight! NeogitDiffContextHighlight guifg=#f2f2f2 guibg=#101010
highlight! NeogitHunkHeader           guifg=#b0b0b0 guibg=#101010
highlight! NeogitHunkHeaderHighlight  guifg=#b0b0b0 guibg=#333333

" ── Tree-sitter links (mostly neutral) ───────────────────────────────────────
highlight! link @namespace           Namespace
highlight! link Namespace            Module
highlight! link Float                Number
highlight! link Constructor          Type
highlight! link Character            String
highlight! link @module              Module
highlight! link @module.builtin      Module
highlight! link @string.special.path Underlined
highlight! link @constructor         Constructor
highlight! link @identifier          Identifier
highlight! link @type.builtin        @type
highlight! link @variable.builtin    @variable
highlight! link @constant.builtin    @constant
highlight! link @function.builtin    @function
highlight! link @tag.attribute       @attribute
highlight! link @keyword.function    Keyword
highlight! link @keyword.operator    Keyword
highlight! link @keyword.return      Keyword
highlight! link @string              String

highlight! link @variable.member        Identifier
highlight! link @variable.member.lua    Identifier
highlight! link @property.lua           Identifier
highlight! link @field.lua              Identifier

highlight!       @variable.member.builtin guifg=#e6e6e6
highlight!       @config                 guifg=#e6e6e6
highlight! link @method.call            Identifier
highlight! link @method                 Identifier
highlight! link @label.lua              Identifier
highlight!       @variable.builtin      guifg=#e6e6e6
highlight!       @namespace.lua         guifg=#e6e6e6
highlight!       @module.builtin        guifg=#e6e6e6
highlight!       @variable              guifg=#e6e6e6
