let [s:plugin, s:enter] = maktaba#plugin#Enter(expand('<sfile>:p'))
if !s:enter
  finish
endif

""
" Whether close folds when opening fold digest window.
call s:plugin.Flag('closefold', 0)

""
" Narrow line number width as possible.
call s:plugin.Flag('flexnumwidth', 0)

""
" Whether use vertical split for the digest window.
call s:plugin.Flag('vertical', 0)

""
" Size of the digest window (width when split vertically, height otherwise).
call s:plugin.Flag('winsize', 0)
