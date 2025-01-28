return {
    "nvim-telescope/telescope.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim"
    },
    tag = "0.1.8",
    opts= { },
    keys = {
        {'<leader>ff', function() require("telescope.builtin").find_files() end, { desc = 'Telescope find files' }}
    }
}
