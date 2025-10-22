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
