return {
    --vim.lsp.config["lua-language-server"] = {
    cmd = { "lua-language-server" },
    root_markers = { ".luarc.json" },
    filetypes = { "lua" },
}
