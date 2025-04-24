return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	dependencies = {
		"nvim-treesitter/nvim-treesitter-textobjects",
	},
	config = function()
		vim.opt.foldmethod = "expr" -- use function to determine folds
		vim.opt.foldexpr = "nvim_treesitter#foldexpr()" -- use treesitter for folding
		vim.opt.foldenable = false

		require("nvim-treesitter.configs").setup({
			ensure_installed = { "c", "lua", "vim", "vimdoc", "rust" },
			auto_install = true,
			highlight = { enable = true },
			indent = { enable = true },
			incremental_selection = {
				enable = true,
				keymaps = {
					init_selection = "<M-o>",
					scope_incremental = "<M-O>",
					node_incremental = "<M-o>",
					node_decremental = "<M-i>",
				},
			},
		})
	end,
}
