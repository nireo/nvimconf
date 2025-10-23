runtime! colors/default.vim
let g:colors_name = 'defaultplus'
set background=dark

highlight Type ctermfg=117 guifg=#9cdcfe gui=NONE cterm=NONE

" Constants - cyan/teal to stand out but not too bright
highlight Constant ctermfg=86 guifg=#4ec9b0 gui=NONE cterm=NONE
" highlight String ctermfg=114 guifg=#98c379 gui=NONE cterm=NONE
highlight Number ctermfg=180 guifg=#d19a66 gui=NONE cterm=NONE
highlight Boolean ctermfg=86 guifg=#4ec9b0 gui=NONE cterm=NONE

" Special characters - subtle purple
highlight Special ctermfg=176 guifg=#c586c0 gui=NONE cterm=NONE

" Identifiers - keep default but ensure consistency
highlight Identifier ctermfg=109 guifg=#9cdcfe gui=NONE cterm=NONE

" Preprocessor/macros - lighter gray-blue
highlight PreProc ctermfg=140 guifg=#b267e6 gui=NONE cterm=NONE

" Subtle differentiation for operators - light gray
highlight Operator ctermfg=252 guifg=#d4d4d4 gui=NONE cterm=NONE

highlight! Pmenu guibg=#1a1a1a ctermbg=234 guifg=#d4d4d4 ctermfg=252
highlight! PmenuSel guibg=#264f78 ctermbg=24 guifg=#ffffff ctermfg=15 gui=bold cterm=bold
highlight! PmenuSbar guibg=#2a2a2a ctermbg=235
highlight! PmenuThumb guibg=#569cd6 ctermbg=111

" Pickers matching the blue/gray theme
highlight! NvimPickerNormal guifg=#d4d4d4 guibg=#1a1a1a
highlight! NvimPickerBorder guifg=#569cd6 guibg=#1a1a1a
highlight! NvimPickerSelected guifg=#ffffff guibg=#264f78 gui=bold
highlight! NvimPickerHeader guifg=#569cd6 guibg=#1a1a1a gui=bold
highlight! NvimPickerHeaderBorder guifg=#569cd6 guibg=#1a1a1a

" Floating windows matching the theme
highlight! FloatBorder guifg=#569cd6 guibg=#1a1a1a
highlight! FloatTitle guifg=#9cdcfe guibg=#1a1a1a gui=bold
highlight! NormalFloat guifg=#d4d4d4 guibg=#1a1a1a
highlight! FloatShadow guibg=#0a0a0a blend=80
highlight! FloatShadowThrough guibg=#0a0a0a blend=100
