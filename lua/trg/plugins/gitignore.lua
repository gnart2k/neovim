return {
	"wintermute-cell/gitignore.nvim",
	requires = {
		"nvim-telescope/telescope.nvim", -- optional: for multi-select
	},
	config = function()
		local gitignore = require("gitignore")
	end,
}
