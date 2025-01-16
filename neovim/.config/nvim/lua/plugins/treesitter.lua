return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        vim.opt.foldmethod = "expr"                     -- use function to determine folds
        vim.opt.foldexpr = "nvim_treesitter#foldexpr()" -- use treesitter for folding
        vim.opt.foldenable = false

        require("nvim-treesitter.configs").setup({
            ensure_installed = { "c", "lua", "vim", "vimdoc" },
            sync_install = false,
            auto_install = true,
            ignore_install = {},
            modules = {},
            highlight = { enable = true },
            indent = { enable = true },
        })
    end,
}
