local lspconfig = require("lspconfig")
local capabilities = require("cmp_nvim_lsp").update_capabilities(vim.lsp.protocol.make_client_capabilities())

lspconfig.clangd.setup{ capabilities = capabilities }
lspconfig.rust_analyzer.setup{ capabilities = capabilities, cmd = { "rustup", "run", "nightly", "rust-analyzer" } }
lspconfig.zls.setup{ capabilities = capabilities }
