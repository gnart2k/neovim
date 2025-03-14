return {
	"karb94/neoscroll.nvim",
	config = function()
		local neoscroll = require("neoscroll")
		neoscroll.setup({
          '<C-u>', '<C-d>',
    '<C-b>', '<C-f>',
    '<C-y>', '<C-e>',
    'zt', 'zz', 'zb',

			-- Set any options as needed
		})

		-- local t = {}
		-- t["<C-u>"] = { "scroll", { "-vim.wo.scroll", "true", "100" } }
		-- t["<C-d>"] = { "scroll", { "vim.wo.scroll", "true", "100" } }
		-- t["<C-b>"] = { "scroll", { "-vim.api.nvim_win_get_height(0)", "true", "100" } }
		-- t["<C-f>"] = { "scroll", { "vim.api.nvim_win_get_height(0)", "true", "100" } }
		-- t["<C-y>"] = { "scroll", { "-0.10", "false", "100" } }
		-- t["<C-e>"] = { "scroll", { "0.10", "false", "100" } }
		-- t["zt"] = { "zt", { "250" } }
		-- t["zz"] = { "zz", { "250" } }
		-- t["zb"] = { "zb", { "250" } }
		--
		-- require("neoscroll.config").set_mappings(t)
	end,
}
