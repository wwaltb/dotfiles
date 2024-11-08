return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.diagnostics.proselint,
				null_ls.builtins.code_actions.proselint,
				null_ls.builtins.formatting.gdformat,
                null_ls.builtins.formatting.asmfmt,
			},
		})
	end,
}
