return {
    --vim.lsp.config["rust-analyzer"] = {
        cmd = { "rust-analyzer" },
        root_markers = { "rust-project.json", "Cargo.toml", ".git" },
        filetypes = { "rust" },
    --}
}
