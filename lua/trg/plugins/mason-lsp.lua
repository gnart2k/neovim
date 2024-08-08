return {
  {
    "williamboman/mason-lspconfig.nvim",
  config=function()
    local masonConfig= require("mason-lspconfig")
	-- masonConfig.setup({
	-- 	ensure_installed={"sumneko_lua"}
	-- })
  end
  }
}
