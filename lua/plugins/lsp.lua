return {
    "neovim/nvim-lspconfig",
    dependencies = {
        "j-hui/fidget.nvim",
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "hrsh7th/nvim-cmp",
        "hrsh7th/cmp-nvim-lsp",
        "hrsh7th/cmp-buffer",
        "hrsh7th/cmp-path",
        "hrsh7th/cmp-cmdline",
        'echasnovski/mini.snippets',
        "abeldekat/cmp-mini-snippets",
        "rafamadriz/friendly-snippets"
    },
    config = function()
        -- combines default capabilities with cmp capabilities
        local capabilities = vim.tbl_deep_extend(
            "force",
            {},
            vim.lsp.protocol.make_client_capabilities(),
            require("cmp_nvim_lsp").default_capabilities(vim.lsp.protocol.make_client_capabilities())
        )
        require("fidget").setup({})
        require("mason").setup({
            icons = {
                package_installed = "",
                package_pending = "",
                package_uninstalled = "",
            },
        })
        require("mason-lspconfig").setup({
            ensure_installed = {
                "bashls",
                "cssls",
                "eslint",
                "lua_ls",
                "marksman",
                "pylsp",
                "r_language_server",
            },
            handlers = {
                -- default handler for not preinstalled servers
                function(server_name)
                    require("lspconfig")[server_name].setup {
                        capabilities = capabilities
                    }
                end,

                ["bashls"] = function()
                    local lspconfig = require("lspconfig")
                    lspconfig.bashls.setup {
                        capabilities = capabilities,
                        settings = { },
                    }
                end,

                ["cssls"] = function()
                    require("lspconfig").cssls.setup {
                        capabilities = capabilities,
                        settings = { },
                    }
                end,

                ["eslint"] = function()
                    require("lspconfig").eslint.setup {
                        capabilities = capabilities,
                        settings = { },
                    }
                end,

                ["lua_ls"] = function()
                    local lspconfig = require("lspconfig")
                    lspconfig.lua_ls.setup {
                        capabilities = capabilities,
                        settings = {
                            Lua = {
                                diagnostics = {
                                    globals = { "vim" },
                                }
                            }
                        }
                    }
                end,

                ["marksman"] = function()
                    require("lspconfig").marksman.setup {
                        capabilities = capabilities,
                        settings = { },
                    }
                end,

                ["pylsp"] = function()
                    require("lspconfig").pylsp.setup {
                        capabilities = capabilities,
                        settings = { },
                    }
                end,

                ["r_language_server"] = function()
                    require("lspconfig").r_language_server.setup {
                        capabilities = capabilities,
                        settings = { },
                    }
                end,
            },
        })

        local gen_loader = require('mini.snippets').gen_loader
        require("mini.snippets").setup({
            snippets = {
                gen_loader.from_lang(),
            },
        })

        local cmp = require("cmp")
        local mini = require("mini.snippets")
        local cmp_select = { behavior = cmp.SelectBehavior.Select }

        require("cmp").setup({
            snippet = {
                expand = function(args)
                    local insert = mini.config.expand.insert or mini.default_insert
                    insert({ body = args.body })
                    cmp.resubscribe({ "TextChangedI", "TextChangedP" })
                    require("cmp.config").set_onetime({ sources = {} })
                end,
            },
            mapping = cmp.mapping.preset.insert({
                ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
                ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
                ['<C-y>'] = cmp.mapping.confirm({ select = true }),
                ["<C-Space>"] = cmp.mapping.complete(),
            }),
            sources = cmp.config.sources({
                { name = 'nvim_lsp' },
                { name = 'mini.snippets' },
            }, {
                { name = 'buffer' },
            })
        })

        vim.diagnostic.config({
            -- update_in_insert = true,
            float = {
                focusable = false,
                style = "minimal",
                border = "rounded",
                source = "always",
                header = "",
                prefix = "",
            },
        })
    end
}
