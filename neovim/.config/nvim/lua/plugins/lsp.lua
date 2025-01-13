return {
    {
        "williamboman/mason.nvim",
        config = true,
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = {},
            })
        end,
    },
    {
        "neovim/nvim-lspconfig",
        dependencies = {
            "folke/lazydev.nvim",
            "stevearc/conform.nvim",
        },
        config = function()
            -- setup neodev before lspconfig
            require("neodev").setup({})

            local lspconfig = require("lspconfig")
            local capabilities = require("blink.cmp").get_lsp_capabilities()

            lspconfig.lua_ls.setup({
                capabilities = capabilities,
            })
            lspconfig.bashls.setup({
                capabilities = capabilities,
            })
            lspconfig.pyright.setup({
                capabilities = capabilities,
            })
            lspconfig.solargraph.setup({
                capabilities = capabilities,
            })
            lspconfig.cssls.setup({
                capabilities = capabilities,
            })
            lspconfig.texlab.setup({
                capabilities = capabilities,
            })
            lspconfig.clangd.setup({
                capabilities = capabilities,
                cmd = {
                    "clangd",
                    "--fallback-style=webkit",
                },
                --filetypes = {
                --    "c",
                --    "cpp",
                --},
            })
            lspconfig.verible.setup({
                capabilities = capabilities,
            })
            lspconfig.svlangserver.setup({
                capabilities = capabilities,
            })
            lspconfig.prolog_ls.setup({
                capabilities = capabilities,
            })
            lspconfig.gdscript.setup({
                cmd = vim.lsp.rpc.connect("127.0.0.1", 6005),
                capabilities = capabilities,
            })
            lspconfig.asm_lsp.setup({
                capabilities = capabilities,
                handlers = { ["textDocument/publishDiagnostics"] = function(...) end },
            })
            lspconfig.arduino_language_server.setup({
                capabilities = capabilities,
                cmd = {
                    "arduino-language-server",
                    "-cli-config",
                    "/home/walt/.arduino15/arduino-cli.yaml",
                    "-fqbn",
                    "esp32:esp32:featheresp32",
                },
            })
        end,
    },
}
