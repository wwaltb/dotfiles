return {
	"rcarriga/nvim-notify",
	config = function()
		require("notify").setup({
			background_colour = "NotifyBackground",
			fps = 30,
			icons = {
				DEBUG = "",
				ERROR = "",
				INFO = "",
				TRACE = "✎",
				WARN = "",
			},
			level = 2,
			max_height = 100,
			max_width = 200,
			minimum_width = 50,
			render = "default",
			stages = "static",
			time_formats = {
				notification = "%T",
				notification_history = "%FT%T",
			},
			timeout = 5000,
			top_down = true,
			on_open = function() end,
			on_close = function() end,
		})
	end,
}
