if !exists("g:potion_command")
  let g:potion_command = "potion"
endif

nnoremap <buffer> <leader>r :call potion#running#PotionCompileAndRunFile()<cr>
nnoremap <buffer> <leader>b :call potion#running#PotionShowBytecode()<cr>
