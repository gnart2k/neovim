return {
	"L3MON4D3/LuaSnip",
	dependencies = { "rafamadriz/friendly-snippets" },
	commit = "04f90900f2a57938921fd25169c7f282e7eefe85",
	config = function()
		local ls = require("luasnip")
		local s = ls.snippet
		local sn = ls.snippet_node
		local isn = ls.indent_snippet_node
		local t = ls.text_node
		local i = ls.insert_node
		local f = ls.function_node
		local c = ls.choice_node
		local d = ls.dynamic_node
		local r = ls.restore_node
		-- require("luasnip.loaders.from_vscode").load({ paths = "../snippets" })
		require("luasnip.loaders.from_vscode").lazy_load()
		ls.setup({})

		ls.add_snippets("all", {
			s("ternary", {
				-- equivalent to "${1:cond} ? ${2:then} : ${3:else}"
				i(1, "cond"),
				t(" ? "),
				i(2, "then"),
				t(" : "),
				i(3, "else"),
			}),
		})
	end,
}
