" nnoremap <silent> M<CR> :ccl<CR>
nnoremap <silent> <Leader>r :execute "!./run.sh " . g:runprgarg<CR>
nnoremap <silent> <Leader>R :execute "silent !./debug.sh " . g:runprgarg<CR>
nnoremap <silent> <Leader>t :!cscope -bcqR<CR>:cscope reset<CR>
nnoremap <silent> <Leader>T :!generate_cscope -f cscope.gen<CR>:!cscope -bcqR<CR>:cscope kill -1<CR>:cscope add .<CR>
nnoremap <Leader>e :echo s:gccver

vnoremap gi V'<O#if 0<Esc>'>o#endif<Esc>
"vnoremap gI V'<O#if 0<Esc>'>o#else<CR>#endif<Esc>
nnoremap gI ?^#if<CR>dd/^#endif<CR>dd
