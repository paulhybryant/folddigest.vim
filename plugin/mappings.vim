let [s:plugin, s:enter] = maktaba#plugin#Enter(expand('<sfile>:p'))
if !s:enter
  finish
endif

" Opens the fold digest window
nnoremap <leader>fd :FoldDigest<CR>

nnoremap <silent><buffer> <CR> :call folddigest#Jump()<CR>

nnoremap <silent><buffer> r :call folddigest#Refresh()<CR>
