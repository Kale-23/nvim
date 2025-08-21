return {
  {
        'romgrk/barbar.nvim',
        dependencies = {
            'lewis6991/gitsigns.nvim',
            'nvim-tree/nvim-web-devicons',
        },
        init = function() vim.g.barbar_auto_setup = false end,
        opts = {
            separator_at_end = false,
            insert_at_end = true,
            maximum_length = 10,
            minimum_length = 10,
            maximum_padding = 1,
            minimum_padding = 1,
            sidebar_filetypes = {
                ['neo-tree'] = {event = 'BufWipeout'},
            },
        },
        version = '^1.0.0', -- optional: only update when a new 1.x version is released
    },
}
