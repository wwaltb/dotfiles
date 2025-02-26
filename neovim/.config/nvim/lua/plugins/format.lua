return {
	"stevearc/conform.nvim",
	event = { "BufWritePre" },
	keys = {
		{
			"<leader>gf",
			function() require("conform").format({ async = true }) end,
			desc = "Format",
		},
	},
	opts = {
		formatters_by_ft = {
			lua = { "stylua" },
			gdscript = { "gdformat" },
		},
		formatters = {
			gdformat = {
				prepend_args = { "--use-spaces=4", "--line-length=80" },
			},
		},

		default_format_opts = {
			lsp_format = "fallback",
		},

		format_on_save = {
			lsp_format = "fallback",
			timeout_ms = 700,
		},
	},
}
