return {
    'MeanderingProgrammer/render-markdown.nvim',
    dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.nvim' }, -- if you use the mini.nvim suite
    ft = { "markdown" },
    opts = {
        render_modes = true,
        anti_conceal = {
            enabled = true,
            ignore = {
                head_background = true,
            },
        },
        heading = {
            icons = {},
            border = true,
            border_virtual = true,
            width = "block",
            left_pad = 2,
            right_pad = 2,
        },
    },
}
