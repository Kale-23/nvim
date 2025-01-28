return {
    { 
        'echasnovski/mini.indentscope',
        version = '*',
        opts = {
            symbol = "|",
            options = {
                try_as_border = true,
            },
            
        },
        config = function ()
            require("mini.indentscope").setup({
                delay = 100,
            })
        end
    },
}
