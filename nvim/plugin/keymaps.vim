" edit confIgs
nnoremap <silent> <Leader>ev :edit $MYVIMRC<CR>
nnoremap <silent> <Leader>ex :edit $HOME/.xinitrc<CR>
nnoremap <silent> <Leader>eX :edit $HOME/.Xresources<CR>
nnoremap <silent> <Leader>ea :edit $HOME/.config/alacritty/alacritty.yml<CR>
nnoremap <silent> <Leader>es :edit $HOME/.config/sway/config<CR>
nnoremap <silent> <Leader>ez :edit $HOME/.zshrc<CR>

nnoremap <silent> <Leader>ss :source %<CR>

" save current file
inoremap <silent> <C-s> <Esc>:w<CR>a
nnoremap <silent> <C-s> :w<CR>

" use jk to escape insert/command mode
inoremap jk <Esc>
cnoremap jk <Esc>

" cut/copy/paste system clipboard
vnoremap <Leader>y "+y
vnoremap <Leader>d "+d
vnoremap <Leader>p "+p
vnoremap <Leader>P "+P
nnoremap <Leader>p "+p
nnoremap <Leader>P "+P

" change working directory to match current file
nnoremap <silent> <Leader>cd :cd %:p:h<CR>:pwd<CR>

" highlight last inserted text
nnoremap gV `[v`]

" better j and k line movement
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk

" add large movements to jumplist
nnoremap <expr> j (v:count > 5 ? "m'" . v:count : "") . "j"
nnoremap <expr> k (v:count > 5 ? "m'" . v:count : "") . "k"

" move selections up/down
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" switch to previous buffer
nnoremap <Leader><Leader> <C-^>

" window management
nnoremap <silent> <Leader>S :split<CR>
nnoremap <silent> <Leader>V :vsplit<CR>
nnoremap <silent> <Leader>D :buffer#<BAR>bdelete#<CR>
nnoremap <silent> <Leader>C :close<CR>
nnoremap <silent> <Leader>O :only<CR>
nnoremap <silent> <Leader>M :ccl<CR>

" move around windows
nnoremap <Leader>h <C-w>h
nnoremap <Leader>j <C-w>j
nnoremap <Leader>k <C-w>k
nnoremap <Leader>l <C-w>l
nnoremap <Leader>H <C-w>H
nnoremap <Leader>J <C-w>J
nnoremap <Leader>K <C-w>K
nnoremap <Leader>L <C-w>L

" keep selection when {in,out}denting
vnoremap > >gv
vnoremap < <gv

" uppercase previous word
nnoremap <Leader>u gUiwea
nnoremap <Leader>U guiew
imap <C-l> <Esc><Leader>u

" keep cursor centered on screen and open folds
nnoremap n nzzzv
nnoremap N Nzzzv
nnoremap J mzJ`z

" add undo break points after select symbols
inoremap , ,<C-g>u
inoremap . .<C-g>u
