" colors/modus_tinted_dark.vim
set background=dark
runtime! colors/default.vim
let g:colors_name = 'modus_tinted_dark'

" -------------------------------------------------------------------
" Core UI
" -------------------------------------------------------------------
highlight Normal guifg=#ffffff guibg=#0d0e1c
highlight StatusLine guifg=#ffffff guibg=#484d67
highlight StatusLineNC guifg=#969696 guibg=#292d48

" Line/column highlight
highlight! CursorLine guibg=#303a6f gui=NONE           " bg-hl-line
highlight! CursorColumn guibg=#303a6f

" Line numbers
highlight! LineNr guifg=#989898 guibg=#1d2235          " fg-dim / bg-dim
highlight! CursorLineNr guifg=#ffffff guibg=#4a4f69 gui=NONE " fg-main / bg-active

" Splits, signcolumn, folds
highlight! VertSplit guifg=#61647a guibg=#0d0e1c       " border / bg-main
highlight! SignColumn guifg=#989898 guibg=#0d0e1c
highlight! FoldColumn guifg=#989898 guibg=#0d0e1c
highlight! Folded guifg=#989898 guibg=#1d2235          " bg-dim

" Tabs
highlight! TabLineFill guifg=#989898 guibg=#2c3045     " bg-tab-bar
highlight! TabLine guifg=#989898 guibg=#4a4f6a         " bg-tab-other
highlight! TabLineSel guifg=#ffffff guibg=#0d0e1c      " bg-tab-current

" Visual / regions
highlight! Visual guibg=#555a66 guifg=NONE             " bg-region
highlight! VisualNOS guibg=#555a66 guifg=NONE

" ColorColumn
highlight! ColorColumn guibg=#1d2235                   " bg-dim

" -------------------------------------------------------------------
" Syntax (using your semantic mappings)
" -------------------------------------------------------------------
" builtin   -> magenta
" fnname    -> magenta-warmer
" keyword   -> blue-warmer
" string    -> blue
" constant  -> magenta-cooler
" type      -> green-cooler
" variable  -> cyan-warmer
" comment   -> red-faint

highlight! Function guifg=#f78fe7 gui=NONE             " fnname (magenta-warmer)
highlight! Title guifg=#ffffff                         " heading-ish (fg-main)
highlight! Identifier guifg=#d2b580                    " identifier (yellow-faint)
highlight! Delimiter guifg=#ffffff
highlight! Directory guifg=#c6daff gui=NONE            " fg-alt
highlight! Module guifg=#feacd0 cterm=italic gui=italic " builtin (magenta)
highlight! Special guifg=#feacd0                       " builtin/special
highlight! link Namespace Module
highlight! Type guifg=#11c777                          " type (green-cooler)
highlight! Number guifg=#ffffff ctermfg=60             " number (fg-main)
highlight! link Float Number
highlight! link Constructor Type
highlight! link Character String
highlight! Constant guifg=#b6a0ff                      " constant (magenta-cooler)
highlight! Operator guifg=#ffffff
highlight! String guifg=#2fafff                        " string (blue)
highlight! Keyword guifg=#79a8ff ctermfg=67 gui=NONE   " keyword (blue-warmer)

" Treesitter-style links
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

" Regex-ish helpers
highlight! @config guifg=#4ae2f0                       " property/variable (cyan-warmer)
highlight! @variable.member.builtin guifg=#4ae2f0
highlight! link @variable.member Identifier
highlight! link @variable.member.lua Identifier
highlight! link @property.lua Identifier
highlight! link @field.lua Identifier
highlight! link @method.call Identifier
highlight! link @method Identifier
highlight! link @label.lua Identifier
highlight! @variable.builtin guifg=#4ae2f0             " variable (cyan-warmer)
highlight! @namespace.lua guifg=#c6daff                " fg-alt
highlight! @module.builtin guifg=#feacd0               " builtin

" Comments & TODO / prose
highlight! Comment guifg=#ef8386 ctermfg=65 gui=italic cterm=italic " comment (red-faint)
highlight! TodoFgTODO guifg=#ff5f59 ctermfg=65 gui=italic cterm=italic " prose-todo (red)
highlight! TodoBgTODO guifg=#0d0e1c guibg=#7a6100 ctermfg=65 gui=italic cterm=italic " bg-yellow-intense

" -------------------------------------------------------------------
" Popup menu / completion
" -------------------------------------------------------------------
highlight! Pmenu guifg=#ffffff guibg=#483d8a ctermbg=0             " bg-completion
highlight! PmenuSel guifg=#ffffff guibg=#45605e ctermbg=233 ctermfg=67 " bg-hover
highlight! PmenuSbar guibg=#1d2235 ctermbg=232                     " bg-dim
highlight! PmenuThumb guibg=#4a4f69 ctermbg=234                    " bg-active

" -------------------------------------------------------------------
" Floating windows
" -------------------------------------------------------------------
highlight! FloatBorder guifg=#61647a guibg=#1d2235
highlight! FloatTitle guifg=#ffffff guibg=#1d2235 gui=NONE
highlight! NormalFloat guifg=#ffffff guibg=#1d2235
highlight! FloatShadow guibg=#4a4f69 blend=80                      " bg-active
highlight! FloatShadowThrough guibg=#4a4f69 blend=100

" -------------------------------------------------------------------
" Diff / VCS
" -------------------------------------------------------------------
highlight! DiffAdd    guifg=#a0e0a0 guibg=#003a2f       " fg-added / bg-added
highlight! DiffChange guifg=#efef80 guibg=#363300       " fg-changed / bg-changed
highlight! DiffDelete guifg=#ffbfbf guibg=#4f1127       " fg-removed / bg-removed
highlight! DiffText   guifg=#ffffff guibg=#4a4a00 gui=NONE " bg-changed-refine

" -------------------------------------------------------------------
" Diagnostics / LSP
" -------------------------------------------------------------------
" err      -> red
" warning  -> yellow
" info     -> green-cooler
" underline-* from underline-err/warning/note
highlight! DiagnosticError guifg=#ff5f59 guibg=NONE      " err (red)
highlight! DiagnosticWarn  guifg=#d0bc00 guibg=NONE      " warning (yellow)
highlight! DiagnosticInfo  guifg=#11c777 guibg=NONE      " info (green-cooler)
highlight! DiagnosticHint  guifg=#88ca9f guibg=NONE      " green-faint

highlight! DiagnosticUnderlineError gui=underline guisp=#ff5f5f  " underline-err (red-intense)
highlight! DiagnosticUnderlineWarn  gui=underline guisp=#d0bc00  " underline-warning (yellow)
highlight! DiagnosticUnderlineInfo  gui=underline guisp=#00d3d0  " underline-note (cyan)
highlight! DiagnosticUnderlineHint  gui=underline guisp=#44df44  " green-intense

highlight! LspReferenceText  guibg=#042837 guifg=NONE   " bg-cyan-nuanced
highlight! LspReferenceRead  guibg=#042837 guifg=NONE
highlight! LspReferenceWrite guibg=#12154a guifg=NONE   " bg-blue-nuanced

" -------------------------------------------------------------------
" Search & match
" -------------------------------------------------------------------
highlight! Search    guifg=#0d0e1c guibg=#7a6100        " bg-search-current (bg-yellow-intense)
highlight! IncSearch guifg=#0d0e1c guibg=#2266ae        " bg-search-lazy (bg-cyan-intense)
highlight! CurSearch guifg=#0d0e1c guibg=#7a6100
highlight! Substitute guifg=#ffffff guibg=#9d1f1f       " bg-search-replace (bg-red-intense)

highlight! MatchParen guifg=#ffffff guibg=#4f7f9f gui=bold " fg-paren-match / bg-paren-match

" -------------------------------------------------------------------
" Prominent messages
" -------------------------------------------------------------------
highlight! ErrorMsg   guifg=#ffffff guibg=#9d1f1f       " bg-prominent-err
highlight! WarningMsg guifg=#0d0e1c guibg=#7a6100       " bg-prominent-warning
highlight! MoreMsg    guifg=#44bc44 guibg=#0d0e1c       " green
highlight! Question   guifg=#00d3d0 guibg=#0d0e1c       " cyan

" -------------------------------------------------------------------
" Links
" -------------------------------------------------------------------
highlight! Underlined guifg=#79a8ff gui=underline       " fg-link / underline-link

" -------------------------------------------------------------------
" Cursor
" -------------------------------------------------------------------
highlight! Cursor guifg=#0d0e1c guibg=#ff66ff           " cursor = magenta-intense

" -------------------------------------------------------------------
" Quickfix
" -------------------------------------------------------------------
highlight! QuickFixLine guifg=#ffffff guibg=#45605e     " similar to PmenuSel
highlight! qfLineNr guifg=#c6daff guibg=#45605e

" -------------------------------------------------------------------
" Terminal cursor
" -------------------------------------------------------------------
highlight! TermCursor guifg=#0d0e1c guibg=#ffffff
highlight! TermCursorNC guifg=#0d0e1c guibg=#595959
highlight! NormalNC guifg=#ffffff guibg=#0d0e1c
