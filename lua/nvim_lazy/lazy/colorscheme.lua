return {
    { 
        "catppuccin/nvim", 
        name = "catppuccin", 
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

        --[[
        "Mofiqul/dracula.nvim",
        name = "dracula",
        config = function()
            local dracula = require("dracula")
            dracula.setup({
                overrides = {
                    Normal = { fg = dracula.colors().white, bg='None' }
                },
            })
            vim.cmd("colorscheme dracula")
            local colors = require('dracula').colors()
            vim.api.nvim_set_hl(0, "DataViewerColumn1", {fg=colors.red, bg="none"})
            vim.api.nvim_set_hl(0, "DataViewerColumn2", {fg=colors.purple, bg="none"})
            vim.api.nvim_set_hl(0, "DataViewerColumn3", {fg=colors.green, bg="none"})
        end,
        --]]
    },

}
