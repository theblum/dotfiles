nnoremap <silent> <Leader>ff :lua require("blum.cfg_telescope").project_files()<CR>
nnoremap <silent> <Leader>fF :Telescope find_files hidden=true no_ignore=true<CR>
nnoremap <silent> <Leader>ft :Telescope find_files cwd=~/dtf<CR>
nnoremap <silent> <Leader>fs :Telescope find_files cwd=~/src<CR>
nnoremap <silent> <Leader>fd :Telescope grep_string<CR>
nnoremap <silent> <Leader>fg :Telescope live_grep<CR>
nnoremap <silent> <Leader>fb :Telescope buffers<CR>
nnoremap <silent> <Leader>fr :Telescope file_browser hidden=true<CR>
nnoremap <silent> <Leader>fh :Telescope help_tags<CR>
nnoremap <silent> <Leader>fm :Telescope man_pages<CR>
