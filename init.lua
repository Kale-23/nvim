require("config.lazy")

vim.lsp.config("*", {
    capabilities = vim.lsp.protocol.make_client_capabilities(),
})

vim.lsp.enable({
    "lua-language-server",
    "rust-analyzer",
})
