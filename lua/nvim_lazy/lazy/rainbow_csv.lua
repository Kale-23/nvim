return {
    'cameron-wags/rainbow_csv.nvim',
    config = true,
    ft = {
        'csv',
        'tsv',
        'csv_semicolon',
        'csv_whitespace',
        'csv_pipe',
        'rfc_csv',
        'rfc_semicolon'
    },
    cmd = {
        'RainbowDelim',
        'RainbowDelimSimple',
        'RainbowDelimQuoted',
        'RainbowMultiDelim'
    },
    keys = {
        {"<leader>dvo", "<cmd>RainbowDelim<cr><cmd>RainbowAlign<cr>", desc = "Select delim and align file"},
        {"<leader>dvc", "<cmd>NoRainbowDelim<cr>", desc = "Select delim and align file"},
    },

}
