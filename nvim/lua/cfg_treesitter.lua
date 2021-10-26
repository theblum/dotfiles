require("nvim-treesitter.configs").setup({
    ensure_installed = { "c", "cpp", "rust", "zig" },
    highlight = {
        enable = true,
        disable = {},
    },
})
