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
        "snacks.nvim",
        opts = {
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
        },
    }
}
