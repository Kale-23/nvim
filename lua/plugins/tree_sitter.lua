return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        require("nvim-treesitter.configs").setup({

            ensure_installed = {
                "vimdoc",
                "lua",
                "bash",
                "python",
                "css",
                "markdown",
                "markdown_inline",
                "r",
                "rnoweb",
                "rust",
                "yaml"
            },
            highlight = {
                enable = true,
            },
            sync_install = false,
            auto_install = false,
            indent = {
                enable = true
            },
        })
    end
}
