nnoremap <silent> <Leader>mm :lua require('harpoon.mark').add_file()<CR>
nnoremap <silent> <Leader>mf :lua require('harpoon.ui').nav_file(1)<CR>
nnoremap <silent> <Leader>md :lua require('harpoon.ui').nav_file(2)<CR>
nnoremap <silent> <Leader>ms :lua require('harpoon.ui').nav_file(3)<CR>
nnoremap <silent> <Leader>ma :lua require('harpoon.ui').nav_file(4)<CR>
nnoremap <silent> <Leader>m, :lua require('harpoon.ui').toggle_quick_menu()<CR>
