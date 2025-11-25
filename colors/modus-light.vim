" colors/modus_operandi_light.vim
if exists('syntax_on')
  syntax reset
endif

set background=light
let g:colors_name = 'modus_light'

" -----------------------------------------------------
" Core UI
" -----------------------------------------------------
" Base colors (from your palette, for reference)
" bg-main      #ffffff
" bg-dim       #f2f2f2
" fg-main      #000000
" fg-dim       #595959
" fg-alt       #193668
" bg-active    #c4c4c4
" bg-inactive  #e0e0e0
" border       #9f9f9f

highlight Normal        guifg=#000000 guibg=#ededed
highlight NormalNC      guifg=#000000 guibg=#f2f2f2

highlight StatusLine    guifg=#000000 guibg=#c8c8c8
highlight StatusLineNC  guifg=#585858 guibg=#e6e6e6

highlight! CursorLine   guibg=#dae5ec gui=NONE       " bg-hl-line
highlight! CursorColumn guibg=#dae5ec

highlight! LineNr       guifg=#595959 guibg=#f2f2f2  " fg-line-number-inactive, bg-line-number-inactive
highlight! CursorLineNr guifg=#000000 guibg=#c4c4c4 gui=NONE " fg-line-number-active, bg-line-number-active

highlight! VertSplit    guifg=#9f9f9f guibg=#ffffff  " border

highlight! SignColumn   guifg=#595959 guibg=#ffffff
highlight! FoldColumn   guifg=#595959 guibg=#ffffff
highlight! Folded       guifg=#595959 guibg=#f2f2f2

highlight! TabLineFill  guifg=#595959 guibg=#dfdfdf  " bg-tab-bar
highlight! TabLine      guifg=#595959 guibg=#c2c2c2  " bg-tab-other
highlight! TabLineSel   guifg=#000000 guibg=#ffffff  " bg-tab-current

highlight! ColorColumn  guibg=#f3f3f3                " bg-diff-context

highlight! Visual       guibg=#b2e4dc guifg=NONE     " bg-hover
highlight! VisualNOS    guibg=#b2e4dc guifg=NONE

" Fringe / gutter-ish
highlight! SignColumnSB guifg=#595959 guibg=#f2f2f2

" -----------------------------------------------------
" Comments & documentation
" -----------------------------------------------------
" comment         fg-dim
" docstring       green-faint (#2a5045)
" docmarkup       magenta-faint (#7c318f)

highlight! Comment       guifg=#595959 gui=italic cterm=italic
highlight! TodoFgTODO    guifg=#a60000 gui=italic         " prose-todo / red
highlight! TodoBgTODO    guifg=#000000 guibg=#f8f0d0 gui=italic " bg-active-argument

highlight! docstring     guifg=#2a5045
highlight! docmarkup     guifg=#7c318f

" -----------------------------------------------------
" Syntax
" (using your semantic mappings: keyword, string, constant, etc.)
" -----------------------------------------------------
" keyword      magenta-cooler  #531ab6
" string       blue-warmer     #3548cf
" constant     blue-cooler     #0000b0
" builtin      magenta-warmer  #8f0075
" fnname       magenta         #721045
" type         cyan-cooler     #005f5f
" variable     cyan            #005e8b
" identifier   yellow-cooler   #7a4f2f

" keywords
highlight! Keyword        guifg=#531ab6 gui=NONE
highlight! Statement      guifg=#531ab6 gui=NONE

" strings
highlight! String         guifg=#3548cf
highlight! Character      guifg=#3548cf

" constants
highlight! Constant       guifg=#0000b0
highlight! Number         guifg=#000000
highlight! Float          guifg=#000000
highlight! Boolean        guifg=#0000b0

" builtin
highlight! Module         guifg=#8f0075 gui=italic
highlight! Special        guifg=#8f0075

" function names
highlight! Function       guifg=#721045 gui=NONE

" types
highlight! Type           guifg=#005f5f
highlight! Typedef        guifg=#00663f gui=NONE     " green-cooler
highlight! StorageClass   guifg=#00663f

" operators / punctuation (fg-main)
highlight! Operator       guifg=#000000
highlight! Delimiter      guifg=#000000
highlight! Directory      guifg=#0031a9             " blue

" generic identifier (name vs. variable)
highlight! Identifier     guifg=#7a4f2f             " identifier = yellow-cooler

" preprocessor / macros
highlight! PreProc        guifg=#a0132f             " red-cooler
highlight! Define         guifg=#a0132f
highlight! Macro          guifg=#7c318f
highlight! Include        guifg=#531ab6

" regex-ish helpers
highlight! SpecialChar    guifg=#721045
highlight! SpecialKey     guifg=#531ab6

" -----------------------------------------------------
" Tree-sitter families
" -----------------------------------------------------
" generic variables
highlight! @variable              guifg=#005e8b
highlight! @variable.builtin      guifg=#005f5f
highlight! @variable.member       guifg=#005e8b
highlight! @variable.parameter    guifg=#005e8b

" Go-specific TS groups (like your dark example)
highlight! @parameter.go          guifg=#005e8b
highlight! @variable.go           guifg=#005e8b
highlight! @field.go              guifg=#005e8b
highlight! @property.go           guifg=#005e8b

" generic field/property
highlight! @field                 guifg=#005e8b
highlight! @property              guifg=#005e8b

" attributes / labels
highlight! @attribute             guifg=#7a4f2f

" namespaces / modules
highlight! @namespace             guifg=#0031a9
highlight! @module                guifg=#8f0075
highlight! @module.builtin        guifg=#8f0075

" strings
highlight! @string                guifg=#3548cf
highlight! @string.special.path   guifg=#3548cf

" constructors, functions, methods
highlight! @constructor           guifg=#00663f     " green-cooler
highlight! @function              guifg=#721045
highlight! @function.builtin      guifg=#8f0075
highlight! @method                guifg=#721045
highlight! @method.call           guifg=#721045

" -----------------------------------------------------
" Diagnostics / LSP
" -----------------------------------------------------
" err       red           #a60000
" warning   yellow-warmer #884900
" info      cyan-cooler   #005f5f
" underline-err     red-intense    #d00000
" underline-warning yellow-intense #808000
" underline-note    cyan-intense   #008899

highlight! DiagnosticError guifg=#a60000
highlight! DiagnosticWarn  guifg=#884900
highlight! DiagnosticInfo  guifg=#005f5f
highlight! DiagnosticHint  guifg=#006800

highlight! DiagnosticUnderlineError gui=underline guisp=#d00000
highlight! DiagnosticUnderlineWarn  gui=underline guisp=#808000
highlight! DiagnosticUnderlineInfo  gui=underline guisp=#008899
highlight! DiagnosticUnderlineHint  gui=underline guisp=#008899

highlight! LspReferenceText  guibg=#e0f2fa   " bg-active-value
highlight! LspReferenceRead  guibg=#e0f2fa
highlight! LspReferenceWrite guibg=#efd3f5   " bg-paren-expression

" -----------------------------------------------------
" Search
" -----------------------------------------------------
" bg-search-current  bg-yellow-intense #f3d000
" bg-search-lazy     bg-cyan-intense   #a4d5f9
" bg-search-replace  bg-red-intense    #ff8f88

highlight! Search      guifg=#000000 guibg=#f3d000
highlight! IncSearch   guifg=#000000 guibg=#a4d5f9
highlight! CurSearch   guifg=#000000 guibg=#f3d000
highlight! Substitute  guifg=#000000 guibg=#ff8f88

" Parens
highlight! MatchParen  guifg=#000000 guibg=#5fcfff gui=bold

" -----------------------------------------------------
" Diff
" -----------------------------------------------------
" bg-added   #c1f2d1    fg-added   #005000
" bg-changed #ffdfa9    fg-changed #553d00
" bg-removed #ffd8d5    fg-removed #8f1313

highlight! DiffAdd      guifg=#005000 guibg=#c1f2d1
highlight! DiffChange   guifg=#553d00 guibg=#ffdfa9
highlight! DiffDelete   guifg=#8f1313 guibg=#ffd8d5
highlight! DiffText     guifg=#000000 guibg=#fac090 gui=NONE

" -----------------------------------------------------
" Messages
" -----------------------------------------------------
highlight! ErrorMsg   guifg=#000000 guibg=#ff8f88    " bg-prominent-err
highlight! WarningMsg guifg=#000000 guibg=#f3d000    " bg-prominent-warning
highlight! MoreMsg    guifg=#006800 guibg=#ffffff    " prose-done / green
highlight! Question   guifg=#005f5f guibg=#ffffff    " info-ish

" -----------------------------------------------------
" Popup menus
" -----------------------------------------------------
" bg-completion #c0deff
highlight! Pmenu       guifg=#000000 guibg=#c0deff
highlight! PmenuSel    guifg=#000000 guibg=#b2e4dc   " bg-hover
highlight! PmenuSbar   guibg=#bdbdbd                 " bg-region
highlight! PmenuThumb  guibg=#9f9f9f                 " border

" -----------------------------------------------------
" Cursor
" -----------------------------------------------------
" cursor = fg-main -> invert Normal
highlight! Cursor      guifg=#ffffff guibg=#000000

" -----------------------------------------------------
" Quickfix
" -----------------------------------------------------
" bg-mark-select  bg-cyan-subtle #bfefff
highlight! QuickFixLine guifg=#000000 guibg=#bfefff
highlight! qfLineNr     guifg=#0031a9 guibg=#bfefff

" -----------------------------------------------------
" Terminal cursor
" -----------------------------------------------------
highlight! TermCursor   guifg=#000000 guibg=#ffffff
highlight! TermCursorNC guifg=#000000 guibg=#595959

" -----------------------------------------------------
" Floating windows
" -----------------------------------------------------
highlight! FloatBorder       guifg=#5a5a5a guibg=#ffffff
highlight! FloatTitle        guifg=#000000 guibg=#ffffff gui=NONE
highlight! NormalFloat       guifg=#000000 guibg=#ffffff
highlight! FloatShadow       guibg=#e0e0e0 blend=80
highlight! FloatShadowThrough guibg=#e0e0e0 blend=100

" -----------------------------------------------------
" Links & UI-ish extras
" -----------------------------------------------------
" fg-link            blue-warmer    #3548cf
" fg-link-visited    magenta        #721045
" fg-link-symbolic   cyan           #005e8b

highlight! Underlined      guifg=#3548cf gui=underline

highlight! Title           guifg=#193668 gui=bold   " fg-alt
highlight! SpecialComment  guifg=#7c318f gui=italic
highlight! NonText         guifg=#9f9f9f
highlight! Whitespace      guifg=#9f9f9f

" You can optionally add terminal_ansi_colors using your term palette
" let g:terminal_ansi_colors = [
"   \ '#000000',  " black
"   \ '#a60000',  " red
"   \ '#006800',  " green
"   \ '#6f5500',  " yellow
"   \ '#0031a9',  " blue
"   \ '#721045',  " magenta
"   \ '#005e8b',  " cyan
"   \ '#a6a6a6',  " white
"   \ '#595959',  " bright black
"   \ '#972500',  " bright red
"   \ '#00663f',  " bright green
"   \ '#884900',  " bright yellow
"   \ '#3548cf',  " bright blue
"   \ '#531ab6',  " bright magenta
"   \ '#005f5f',  " bright cyan
"   \ '#ffffff'   " bright white
" \ ]
