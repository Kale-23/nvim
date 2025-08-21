local message = [[
 ____________________________________________________ 
/ ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ \
| ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ |
| ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ |
| ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ |
| ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ |
\ ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ /
 ‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾
\   ,__,
      \  (oo)____
          (__)    )\
              ||--|| *
]]


return {
    {
        "folke/snacks.nvim",
        priority = 1000,
        lazy = false,
        opts = {
            buffdelete = { enabled = true },
            dashboard = {
                enabled = true,
                preset = {
                header = message,
                    keys = {
                        { icon = " ", key = "f", desc = "Find File", action = ":lua Snacks.dashboard.pick('files')" },
                        { icon = " ", key = "n", desc = "New File", action = ":ene | startinsert" },
                        { icon = "󰒲 ", key = "L", desc = "Lazy", action = ":Lazy", enabled = package.loaded.lazy ~= nil },
                        { icon = " ", key = "q", desc = "Quit", action = ":qa" },
                    },
                },
                sections = {
                    { section = "header", padding = 0 },
                    { icon = " ", title = "Keymaps", section = "keys", indent = 2, padding = 1 },
                    { icon = " ", title = "Recent Files", section = "recent_files", indent = 2, padding = 1 },
                    { section = "startup" },
                },
            },
            indent = { 
                priority = 1,
                animate = { enabled = false },
            },
            lazy_git = { enabled = true },
            quickfile = { enabeled = true },
            scroll = { enabled = true },
            terminal = { enabled = true }, 
            toggle = { enabled = true },
            util = { enabled = true },
            zen = {
                win = {
                    width = 120,
                    height = 0,
                    minimal = false,
                    backdrop = { transparent = true, blend = 40 },
                },
                zoom = {
                    win = {
                        width = 120,
                        height = 0,
                        minimal = true,
                        backdrop = { transparent = true, blend = 40 },
                    },
                },
            },
        },
        keys = {
            -- zen
            {"<leader>z", function() require("snacks").zen() end, desc = "Toggle Zen"},
            {"<leader>Z", function() require("snacks").zen() end, desc = "Toggle Zen Zoom"},
            -- terminal
            {"<c-/>", function() require("snacks").terminal.toggle() end, desc = "Toggle Terminal"},
            -- lazy git
            {"<leader>lg", function() require("snacks").lazygit.open() end, desc = "Toggle Lazy Git"},
        }
    },
}


