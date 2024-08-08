return {
	"nvim-treesitter/nvim-treesitter",
	config = function()
		local ts = require("nvim-treesitter.configs")
		ts.setup({
			auto_install = true,
			highlight = {
				enable = true,
			},
		})
	end,
}
