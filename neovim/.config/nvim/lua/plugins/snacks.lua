return {
    "folke/snacks.nvim",
    opts = {
        notify = {
            enabled = true,
        },
        dashboard = {
            enabled = true,
            { section = "keys", gap = 1, padding = 1 },
            { section = "startup" },
        },
    },
}
