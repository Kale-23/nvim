return {
    'vidocqh/data-viewer.nvim',
    dependencies = {
        "nvim-lua/plenary.nvim",
    },
    keys = {
        {"<leader>dv", "<cmd>DataViewer<cr>", desc = "open data viewer"}
    },
    config = function()
        require("data-viewer").setup({
                autoDisplayWhenOpenFile = false,
                maxLineEachTable = 100,
                columnColorEnable = true,
                columnColorRoulette = { -- Highlight groups
                    "DataViewerColumn1",
                    "DataViewerColumn2",
                    "DataViewerColumn3",
                },
                view = {
                    float = true, -- False will open in current window
                    width = 0.9, -- Less than 1 means ratio to screen width, valid when float = true
                    height = 0.9, -- Less than 1 means ratio to screen height, valid when float = true
                    zindex = 50, -- Valid when float = true
                },
                keymap = {
                    quit = "q",
                    next_table = "<C-l>",
                    prev_table = "<C-h>",
                },

        })
    end,

}
