return {
    {
        "echasnovski/mini.nvim",
        config = function()
            require("mini.ai").setup()
            require("mini.git").setup()
            require("mini.diff").setup()
            require("mini.icons").setup()
            require("mini.pairs").setup()
            require("mini.surround").setup()
        end,
    },
}
