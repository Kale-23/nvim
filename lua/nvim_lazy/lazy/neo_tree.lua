return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
        "MunifTanjim/nui.nvim",
        -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
    },
    keys = {
        {"<leader>e", "<cmd>Neotree toggle<cr>", desc = "Toggle Neotree"}

    },
    config = function ()
        require("neo-tree").setup({
            close_if_last_window = true,

            window = {
                width = 30,
            },
            filesystem = {
                filtered_items = {
                    hide_dotfiles = false,
                    never_show = {
                        ".DS_Store",
                    },
                },
            },          
        })
    end
}
