local lspconfig = require("lspconfig")
local capabilities = require("cmp_nvim_lsp").update_capabilities(vim.lsp.protocol.make_client_capabilities())

vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
    vim.lsp.diagnostic.on_publish_diagnostics, {
        virtual_text = false,
        signs = true,
    }
)
vim.cmd([[
    " show diagnostics on hover
    augroup LSPConfig
        autocmd!
        autocmd CursorHold * lua vim.lsp.diagnostic.show_line_diagnostics()
    augroup END
]])

lspconfig.clangd.setup{ capabilities = capabilities }
lspconfig.rust_analyzer.setup{ capabilities = capabilities, cmd = { "rustup", "run", "nightly", "rust-analyzer" } }
lspconfig.zls.setup{ capabilities = capabilities }
lspconfig.vimls.setup{ capabilities = capabilities }

local sumneko_root_path = vim.fn.stdpath('cache')..'/lspconfig/sumneko_lua/lua-language-server'
local lua_runtime_path = vim.split(package.path, ';')
table.insert(lua_runtime_path, "lua/?.lua")
table.insert(lua_runtime_path, "lua/?/init.lua")

lspconfig.sumneko_lua.setup{
    cmd = { "lua-language-server", "-E", sumneko_root_path .. "/main.lua" },
    settings = {
        Lua = {
            runtime = {
                version = "LuaJIT",
                path = lua_runtime_path,
            },

            diagnostics = {
                globals = { "vim" },
            },

            workspace = {
                library = vim.api.nvim_get_runtime_file("", true),
            },
        }
    },
}
