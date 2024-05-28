return {
	"preservim/vim-pencil",
	config = function()
		local pencil_augroup = vim.api.nvim_create_augroup("pencil", { clear = true })

		vim.api.nvim_create_autocmd("FileType", {
			group = pencil_augroup,
			pattern = { "markdown", "mkd" },
			callback = function()
				vim.fn["pencil#init"]()
			end,
		})
	end,
}
