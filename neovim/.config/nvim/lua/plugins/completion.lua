return {
    "saghen/blink.cmp",
    dependencies = "rafamadriz/friendly-snippets",

    -- use a release tag to download pre-built binaries
    version = "v0.*",
    opts = {
        keymap = { preset = "default" },

        appearance = {
            use_nvim_cmp_as_default = false,
            nerd_font_variant = "mono",
        },

        completion = {
            menu = {
                border = "rounded",
                winhighlight = "Normal:Normal,FloatBorder:FloatBorder,CursorLine:Visual,Search:None",
                draw = {
                    treesitter = { "lsp" },
                },
            },
        },

        signature = {
            enabled = true,
            window = {
                border = "rounded",
                winhighlight = "Normal:Normal,FloatBorder:FloatBorder,CursorLine:Visual,Search:None",
            },
        },

        sources = {
            default = { "lsp", "path", "snippets", "buffer" },
        },

    },
    opts_extend = { "sources.default" },
}
