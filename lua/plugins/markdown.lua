return {
    "toppair/peek.nvim",
    event = { "VeryLazy" },
    build = "deno task --quiet build:fast",
    opts = {
        filetype = { "markdown", "md", "rmd" },
        app = { "Arc" },
    },
    keys = {
        {"<leader>md", function() require('peek').open() end, desc = "Open Markdown Renderer"},
        {"<leader>mc", function() require('peek').close() end, desc = "Close Markdown Renderer"},
    },
}
