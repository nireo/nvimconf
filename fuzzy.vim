packadd cfilter
set wildmenu
set wildmode=noselect:longest:lastused,full
set grepprg=rg\ --vimgrep\ --hidden\ -g\ '!.git/*'
if executable('fd') && executable('fzf')
    set findfunc=FuzzyFindFunc
endif

nnoremap <leader>f :find<space>
nnoremap <leader>F :vert sf<space>
nnoremap <leader>b :b<space>
nnoremap <leader>dq :Findqf<space>
nnoremap <leader>gg :grep ''<left>
nnoremap <leader>G :grep <C-R><C-W><cr>
nnoremap <leader>z :Zgrep<space>
nnoremap <leader>Z :Fzfgrep<space>
nnoremap <leader>cf :Cfilter<space> 
nnoremap <leader>cz :Cfuzzy<space> 
nnoremap <leader>co :colder<space> 
nnoremap <leader>cn :cnewer<space> 
cnoremap <C-space> .*
"nvim only
cnoremap <A-9> \(
cnoremap <A-0> \)
cnoremap <A-space> \<space>

command! -nargs=+ -complete=file_in_path Findqf call FdSetQuickfix(<f-args>)
command! -nargs=1 Cfuzzy call FuzzyFilterQf(<f-args>)
command! -nargs=+ -complete=file_in_path Zgrep call FuzzyFilterGrep(<f-args>)
command! -nargs=+ -complete=file_in_path Fzfgrep call FzfGrep(<f-args>)

function! FuzzyFilterGrep(query, path=".") abort
    exe "grep! '" .. a:query .. "' " .. a:path
    let sort_query = substitute(a:query, '\.\*', '', 'g')
    let sort_query = substitute(sort_query, '\\\(.\)', '\1', 'g')
    call FuzzyFilterQf(sort_query)
    cfirst
    copen
endfunction

function! FuzzyFilterQf(...) abort
    call setqflist(matchfuzzy(getqflist(), join(a:000, " "), {'key': 'text'}))
endfunction

function! FzfGrep(query, path=".")
    let oldgrepprg = &grepprg
    let &grepprg = "rg --column --hidden -g '!.git/*' . " 
        \.. a:path .. " \\| fzf --filter='$*' --delimiter : --nth 4.."
    exe "grep " .. a:query
    let &grepprg = oldgrepprg
endfunction

function! FuzzyFindFunc(cmdarg, cmdcomplete)
    return systemlist("fd --hidden . \| fzf --filter='" 
        \.. a:cmdarg .. "'")
endfunction

function! FdSetQuickfix(...) abort
    let fdresults = systemlist("fd -t f --hidden " .. join(a:000, " "))
    if v:shell_error
        echoerr "Fd error: " .. fdresults[0]
        return
    endif
    call setqflist(map(fdresults, {_, val -> 
        \{'filename': val, 'lnum': 1, 'text': val}}))
    copen
endfunction
