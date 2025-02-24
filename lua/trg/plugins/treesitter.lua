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
		vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
			pattern = "*.arb",
			callback = function()
				vim.bo.filetype = "json"
			end,
		})
	end,
}
