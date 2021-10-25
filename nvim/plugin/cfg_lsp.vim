nnoremap <silent> <Leader>gd :lua vim.lsp.buf.definition()<CR>
nnoremap <silent> <Leader>gt :lua vim.lsp.buf.type_definition()<CR>
nnoremap <silent> <Leader>gr :lua vim.lsp.buf.references()<CR>
nnoremap <silent> <Leader>rn :lua vim.lsp.buf.rename()<CR>
nnoremap <silent> <Leader>fm :lua vim.lsp.buf.formatting()<CR>
nnoremap <silent> <Leader>[d :lua vim.lsp.diagnostic.goto_prev()<CR>
nnoremap <silent> <Leader>]d :lua vim.lsp.diagnostic.goto_next()<CR>
nnoremap <silent> K :lua vim.lsp.buf.hover()<CR>
