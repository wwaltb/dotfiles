return {
    "Yoolayn/nvim-intro",
    lazy = false,
    opts = {
        intro = {
            "███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗",
            "████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║",
            "██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║",
            "██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║",
            "██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║",
            "╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝",
            "                                                      ",
            "  type :checkhealth<Enter>  ->   to optimize Nvim     ",
            "  type :Lazy<Enter>         ->   to update plugins    ",
            "  type :q                   ->   to quit              ",
            "  type :help<Enter>         ->   for help             ",
            "                                                      ",
            "  type :help news<Enter>    ->   to see changes       ",
            "                                                      ",
            "  press <Space>ff           ->   to find files        ",
            "  press <Space>fr           ->   to find recents      ",
            "                                                      ",
        },
        color = "#dcd7ba",
        scratch = true,
        highlights = {
            ["<Enter>"] = "#7e9cd8",
        }
    },
}
