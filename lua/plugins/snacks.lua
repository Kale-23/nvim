return {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    import = "plugins.snacks",
    keys = {
        -- zen
        {"<leader>z", function() require('snacks').zen() end, desc = "Toggle Snacks"},
        {"<leader>Z", function() require('snacks').zen.zoom() end, desc = "Toggle Snacks Zoom"},
        -- terminal
        {"<c-/>", function() require('snacks').terminal.toggle() end, desc = "Toggle Terminal"},
    },
}
