if &compatible
    set nocompatible
endif

set runtimepath+=/home/blum/.local/share/dein/repos/github.com/Shougo/dein.vim
call dein#begin('/home/blum/.local/share/dein')

call dein#add('Shougo/dein.vim')
call dein#add('chriskempson/base16-vim')
call dein#add('neoclide/coc.nvim', {'rev': 'master', 'build': 'yarn install --frozen-lockfile'})
call dein#add('junegunn/fzf.vim')
call dein#add('itchyny/lightline.vim')
call dein#add('sakhnik/nvim-gdb')
call dein#add('rust-lang/rust.vim')
call dein#add('ziglang/zig.vim')
call dein#add('tomtom/tcomment_vim')
call dein#add('wellle/tmux-complete.vim')
call dein#add('tpope/vim-dispatch')
call dein#add('tpope/vim-eunuch')
call dein#add('tpope/vim-fugitive')
call dein#add('tpope/vim-repeat')
call dein#add('tpope/vim-surround')
call dein#add('tpope/vim-unimpaired')
call dein#add('tikhomirov/vim-glsl')
call dein#add('airblade/vim-rooter')
call dein#add('mhinz/vim-signify')
call dein#add('tmux-plugins/vim-tmux')
call dein#add('tmux-plugins/vim-tmux-focus-events')

call dein#end()

filetype plugin on
filetype indent on
syntax enable

if dein#check_install()
    call dein#install()
endif

let s:home = fnamemodify(resolve(expand("<sfile>:p")), ":h")

command! -nargs=1 LoadScript exec "source" . s:home . "/" . "<args>"

LoadScript init/options.vim
LoadScript init/commands.vim
LoadScript init/colors.vim
LoadScript init/keymaps.vim

LoadScript init/cfg_fzf.vim
LoadScript init/cfg_coc.vim
LoadScript init/cfg_rust.vim
LoadScript init/cfg_lightline.vim
