let g:colors_name = 'custom-light'

set background=light
highlight clear
if exists("syntax_on")
  syntax reset
endif

" --- Main UI ---
highlight Normal       guifg=#2C363C guibg=#C8C8C8
highlight Cursor       guifg=#F0EDEC guibg=#2C363C
highlight Visual       guifg=NONE    guibg=#B0C4DE
highlight LineNr       guifg=#7A8A94 guibg=#C8C8C8
highlight CursorLine   guibg=#BFBFBF " Slightly darker for better visibility
highlight CursorLineNr guifg=#286486 guibg=#C8C8C8 gui=bold

" --- The Dark Bar (Status & Tabline) ---
" Using the dark foreground color for the background of the bar
highlight StatusLine   guifg=#F0EDEC guibg=#2C363C gui=none
highlight StatusLineNC guifg=#CFC1BA guibg=#4F5E68 gui=none
highlight TabLine      guifg=#CFC1BA guibg=#4F5E68 gui=none
highlight TabLineSel   guifg=#F0EDEC guibg=#2C363C gui=bold
highlight TabLineFill  guibg=#4F5E68

" --- Darker Floating Windows ---
" Dropping the brightness here to create a layered effect
highlight NormalFloat  guifg=#2C363C guibg=#B0B0B0
highlight FloatBorder  guifg=#4F5E68 guibg=#B0B0B0
highlight FloatTitle   guifg=#F0EDEC guibg=#286486 gui=bold

" --- Tightened Autocomplete (Pmenu) ---
" Darker background than the main editor to 'fit' better
highlight Pmenu        guibg=#B8B8B8 guifg=#2C363C
highlight PmenuSel     guibg=#286486 guifg=#FFFFFF gui=bold
highlight PmenuSbar    guibg=#A0A0A0
highlight PmenuThumb   guibg=#4F5E68

" --- Syntax ---
highlight Comment      guifg=#5E6C75 gui=italic
highlight String       guifg=#4F6C31
highlight Constant     guifg=#3B8992
highlight Function     guifg=#88507D
highlight Statement    guifg=#286486 gui=bold
highlight Keyword      guifg=#286486 gui=bold
highlight Type         guifg=#944927
highlight PreProc      guifg=#3B8992
highlight Special      guifg=#88507D
highlight Delimiter    guifg=#2C363C

" --- TreeSitter & Cleanups ---
highlight! link @variable          Normal
highlight! link @function          Function
highlight! link @keyword           Keyword
highlight! link @constant          Constant
highlight! link @punctuation.delimiter Delimiter
highlight! link @punctuation.bracket   Delimiter

" --- Diagnostics ---
highlight DiagnosticError guifg=#A8334C
highlight DiagnosticWarn  guifg=#944927
highlight DiagnosticInfo  guifg=#286486
highlight DiagnosticHint  guifg=#3B8992
highlight DiagnosticUnderlineError gui=undercurl guisp=#A8334C
