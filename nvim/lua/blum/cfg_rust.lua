local capabilities = require("cmp_nvim_lsp").update_capabilities(vim.lsp.protocol.make_client_capabilities())

require("rust-tools").setup({
    tools = {
        inlay_hints = {
            only_current_line = true,
        }
    },

    server = {
        capabilities = capabilities,
        cmd = { "rustup", "run", "nightly", "rust-analyzer" },
    }
})

require("crates").setup()
