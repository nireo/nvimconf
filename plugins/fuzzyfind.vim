set wildmode=noselect:lastused,full
set wildmenu
set wildoptions=pum,fuzzy
set pumheight=12

nnoremap <space>f :<C-u>find<space>

function! Find(cmd_arg, cmd_complete) abort
  if !exists('s:files_cache') || empty(s:files_cache)
    if executable('fd')
      let s:files_cache = systemlist('fd --type f --hidden --exclude .git')
    elseif executable('rg')
      let s:files_cache = systemlist('rg --files --hidden --glob !.git')
    else
      let s:files_cache = filter(globpath('.', '**', 1, 1), '!isdirectory(v:val)')
    endif
  endif
  if empty(a:cmd_arg)
    return s:files_cache
  else
    return matchfuzzy(s:files_cache, a:cmd_arg)
  endif
endfunction

set findfunc=Find
