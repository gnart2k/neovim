-- plugins/telescope.lua:
return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.4",
	-- or                              , branch = '0.1.x',
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		local builtin = require("telescope.builtin")
		local telescope = require("telescope")
		vim.keymap.set("n", "<leader>/", builtin.live_grep, {})
		vim.keymap.set("n", "<leader>m", builtin.find_files, {})
		vim.keymap.set("n", "<leader>sb", builtin.buffers, {})
		vim.keymap.set("n", "<leader>sh", builtin.help_tags, {})
		vim.keymap.set("n", "<leader><space>", builtin.resume, {})

		telescope.setup({
			defaults = {
				history = {
					path = "~/.config/nvim/telescope_history",
					limit = 100,
				},
			},
		})
	end,
}
