require("nvim-treesitter.configs").setup({
    ensure_installed = { "query", "c", "cpp", "rust", "zig" },
    highlight = {
        enable = false,
        disable = {},
    },
})
