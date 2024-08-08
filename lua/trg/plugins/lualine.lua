return {
	"nvim-lualine/lualine.nvim",
	config = function()
		local lualine = require("lualine")
		local theme = require("lualine.themes.iceberg_dark")
		lualine.get_config()
		lualine.setup({
			options = { theme = theme },
		})
	end,
}
