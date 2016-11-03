if !exists("g:potion_command")
  let g:potion_command = "potion"
endif

function! PotionCompileAndRunFile()
  silent !clear
  execute "!" . g:potion_command . " " . bufname("%")
endfunction

function! PotionShowBytecode()
  " Get the bytecode
  let bytecode = system(g:potion_command . " -c -V " . bufname("%") . " 2>&1")
  " echom bytecode

  let winname = '__Position_Bytecode__'

  " Verify if window is open
  let winnr = bufwinnr(winname)
  if winnr != -1
    exe winnr . 'wincmd w'
  else
    exe 'vsplit ' . winname
  endif

  " setup new window
  normal! ggdG
  setlocal filetype=positionbytecode
  setlocal buftype=nofile

  " Insert the bytecode.
  call append(0, split(bytecode, '\v\n'))

endfunction

nnoremap <buffer> <leader>r :call PotionCompileAndRunFile()<cr>
nnoremap <buffer> <leader>b :call PotionShowBytecode()<cr>
