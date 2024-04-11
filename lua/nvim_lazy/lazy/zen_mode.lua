return {
    {
        "folke/zen-mode.nvim",
        config = function()
            require("zen-mode").setup({
                window = {
                    width = 90,
                },
            })
            vim.keymap.set("n", "<leader>zz", function()
                require("zen-mode").toggle()
            end)

        end
    }
}
