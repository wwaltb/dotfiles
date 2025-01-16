return {
    "folke/snacks.nvim",
    opts = {
        notify = {
            enabled = true,
        },
        status = {
            enabled = true,
        },
        dashboard = {
            enabled = true,
            preset = {
                keys = {
                    { icon = " ", key = "f", desc = "Find File", action = ":Pick files" },
                    { icon = " ", key = "n", desc = "New File", action = ":ene | startinsert" },
                    { icon = " ", key = "g", desc = "Find Text", action = ":Pick grep_live" },
                    { icon = " ", key = "r", desc = "Recent Files", action = ":Pick oldfiles" },
                    { icon = " ", key = "c", desc = "Config", action = ":lua Snacks.dashboard.pick('files', {cwd = vim.fn.stdpath('config')})" },
                    { icon = " ", key = "s", desc = "Restore Session", section = "session" },
                    { icon = "󰒲 ", key = "L", desc = "Lazy", action = ":Lazy", enabled = package.loaded.lazy ~= nil },
                    { icon = " ", key = "q", desc = "Quit", action = ":qa" },
                }
            },

            { section = "keys",   gap = 1, padding = 1 },
            { section = "startup" },
        },
        dim = {

            scope = {
                min_size = 7,
                max_size = 20,
            },
            animate = {
                enabled = false,
            },
        },
        zen = {
            enabled = true,
        },
        styles = {
            zen = {
                backdrop = { transparent = false, blend = 90 },
            },
        },
    },
}
