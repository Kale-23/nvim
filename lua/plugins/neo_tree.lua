return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons",
        "MunifTanjim/nui.nvim",
    },
    opts = {
        window = {
            width = 30,
        },
        close_if_last_window = true,
        source_selector = {
            winbar = true,
            statusline = false
        },
        filesystem = {
            filtered_items = {
                hide_dotfiles = false,
                never_show = {
                    ".DS_Store",
                },
            },
        },
    },
    keys = {
        {"<leader>e", "<cmd>Neotree toggle<cr>", desc = "Toggle Neotree"}
    },
}
