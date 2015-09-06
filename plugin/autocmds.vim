""
" @section Autocommands, autocmds


let [s:plugin, s:enter] = maktaba#plugin#Enter(expand('<sfile>:p'))
if !s:enter
  finish
endif


function! s:AutoRefresh()
  if s:plugin.Flag('autorefresh')
    call s:plugin.Flag('autorefresh', 0)
    call folddigest#Refresh()
    call s:plugin.Flag('autorefresh', 1)
  endif
endfunction


augroup FoldDigest
  autocmd!
  autocmd BufEnter * if &ft =~# 'folddigest' | call <SID>AutoRefresh() | endif
augroup END
