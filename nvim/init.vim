if &compatible
    set nocompatible
endif

set runtimepath+=/home/blum/.local/share/dein/repos/github.com/Shougo/dein.vim
call dein#begin('/home/blum/.local/share/dein')

call dein#add('Shougo/dein.vim')
call dein#add('chriskempson/base16-vim')
call dein#add('neovim/nvim-lspconfig')
call dein#add('hrsh7th/cmp-nvim-lsp')
call dein#add('hrsh7th/cmp-path')
call dein#add('hrsh7th/cmp-buffer')
call dein#add('hrsh7th/nvim-cmp')
call dein#add('nvim-lua/popup.nvim')
call dein#add('nvim-lua/plenary.nvim')
call dein#add('nvim-telescope/telescope.nvim')
call dein#add('nvim-telescope/telescope-fzy-native.nvim')
call dein#add('nvim-treesitter/nvim-treesitter', {'hook_post_update': 'TSUpdate'})
call dein#add('nvim-lualine/lualine.nvim')
call dein#add('kyazdani42/nvim-web-devicons')
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
call dein#add('tpope/vim-vinegar')
call dein#add('tikhomirov/vim-glsl')
call dein#add('airblade/vim-rooter')
call dein#add('mhinz/vim-signify')
call dein#add('tmux-plugins/vim-tmux')
call dein#add('tmux-plugins/vim-tmux-focus-events')

call dein#end()

filetype plugin indent on
syntax enable

if dein#check_install()
    call dein#install()
endif

let g:mapleader = ","
let g:localmapleader = "\\"

lua require("cfg_treesitter")
lua require("cfg_telescope")
lua require("cfg_cmp")
lua require("cfg_lsp")
lua require("cfg_lualine")
