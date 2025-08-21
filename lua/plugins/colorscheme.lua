return {
    {
        "catppuccin/nvim",
        lazy = false,
        priority = 1000,
        config = function()
            require("catppuccin").setup({
                flavor = "frappe",
                transparent_background = true,
                termcolors = true,
            })
            vim.cmd("colorscheme catppuccin")
            vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
            vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
        end
    },
}
