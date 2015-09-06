let [s:plugin, s:enter] = maktaba#plugin#Enter(expand('<sfile>:p'))
if !s:enter
  finish
endif


""
" @usage
" Opens the fold digest window
command -nargs=0 FoldDigest call folddigest#FoldDigest()
