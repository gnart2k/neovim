return {
	"williamboman/nvim-lsp-installer",
	"neovim/nvim-lspconfig",
	config = function()
		require("nvim-lsp-installer").setup({
			automatic_installation = true, -- automatically detect which servers to install (based on which servers are set up via lspconfig)
			ui = {
				icons = {
					server_installed = "✓",
					server_pending = "➜",
					server_uninstalled = "✗",
				},
			},
		})
	end,
}
