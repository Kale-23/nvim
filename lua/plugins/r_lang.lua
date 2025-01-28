return   {
    "R-nvim/R.nvim",
    lazy = false,
    opts = {
        R_args = { "--quiet", "--no-save" },
        hook = {
            on_filetype = function()
                vim.keymap.set("n", "<Enter>", "<Plug>RDSendLine", { buffer = true })
                vim.keymap.set("v", "<Enter>", "<Plug>RSendSelection", { buffer = true })
            end,
        },
        pdfviewer = "",
    },
    --[[
    {
    "R-nvim/cmp-r",
    },

    {
        "hrsh7th/nvim-cmp",
        config = function()
            require("cmp").setup({
                sources = {{ name = "cmp_r" }}
            })
            require("cmp_r").setup({
                docwidth = 60,
                fun_data_1 = {'select', 'rename', 'mutate', 'filter'},
                fun_data_2 = {ggplot = {'aes'}, with = {'*'}},
            })
        end,
    },
--]]
}
