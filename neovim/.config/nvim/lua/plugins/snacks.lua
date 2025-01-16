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
            sections = {
                { section = "header" },
                {
                    pane = 2,
                    section = "terminal",
                    cmd = "colorscript -e crunchbang-mini | sed 's/^/     /g'",
                    height = 5,
                    padding = 1,
                },
                { section = "keys", gap = 1, padding = 1 },
                { pane = 2, icon = " ", title = "Recent Files", section = "recent_files", indent = 2, padding = 1 },
                { pane = 2, icon = " ", title = "Projects", section = "projects", indent = 2, padding = 1 },
                {
                    pane = 2,
                    icon = " ",
                    title = "Git Status",
                    section = "terminal",
                    enabled = function()
                        return Snacks.git.get_root() ~= nil
                    end,
                    cmd = "git status --short --branch --renames",
                    height = 5,
                    padding = 1,
                    ttl = 5 * 60,
                    indent = 3,
                },
                { section = "startup" },
            },
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
