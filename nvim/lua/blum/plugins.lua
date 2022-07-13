local install_path = vim.fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
local packer_bootstrap
if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
    packer_bootstrap = vim.fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
end

vim.cmd([[
    " auto recompile loader file
    augroup PackerUserConfig
        autocmd!
        autocmd BufWritePost plugins.lua source <afile> | PackerCompile
    augroup END
]])

return require("packer").startup(function(use)
    use "wbthomason/packer.nvim"
    -- use "chriskempson/base16-vim"
    -- use "marko-cerovac/material.nvim"
    use "shaunsingh/nord.nvim"
    use "neovim/nvim-lspconfig"
    use "hrsh7th/cmp-nvim-lsp"
    use "hrsh7th/cmp-path"
    use "hrsh7th/cmp-buffer"
    use "hrsh7th/nvim-cmp"
    use "hrsh7th/cmp-vsnip"
    use "hrsh7th/vim-vsnip"
    use { "nvim-telescope/telescope.nvim", requires = { "nvim-lua/plenary.nvim" } }
    use "nvim-telescope/telescope-fzy-native.nvim"
    use "nvim-telescope/telescope-file-browser.nvim"
    use { "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" }
    use "nvim-treesitter/playground"
    use { "ThePrimeagen/harpoon", requires = { "nvim-lua/plenary.nvim", "nvim-lua/popup.nvim" } }
    use { "nvim-lualine/lualine.nvim", requires = { "kyazdani42/nvim-web-devicons" } }
    use { "simrat39/rust-tools.nvim", requires = { "nvim-lua/plenary.nvim", 'mfussenegger/nvim-dap' } }
    use { "saecki/crates.nvim", requires = { "nvim-lua/plenary.nvim" } }
    use "ron-rs/ron.vim"
    use "rust-lang/rust.vim"
    use "ziglang/zig.vim"
    use "tomtom/tcomment_vim"
    use "wellle/tmux-complete.vim"
    use "tpope/vim-dispatch"
    use "tpope/vim-eunuch"
    use "tpope/vim-fugitive"
    use "tpope/vim-repeat"
    use "tpope/vim-surround"
    use "tpope/vim-unimpaired"
    use "tpope/vim-vinegar"
    use "tikhomirov/vim-glsl"
    use "airblade/vim-rooter"
    use "mhinz/vim-signify"
    use "tmux-plugins/vim-tmux"
    use "tmux-plugins/vim-tmux-focus-events"

    if packer_bootstrap then
        require("packer").sync()
    end
end)
