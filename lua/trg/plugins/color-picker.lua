return {
	"rrethy/vim-hexokinase",
	build = "make hexokinase",
	config = function()
		vim.cmd([[
      augroup Hexokinase
        autocmd!
        autocmd BufWritePost *.vim,*.lua,*.tsx,*.js,*.css HexokinaseTurnOn
      augroup END
    ]])

		-- Add any additional configuration if needed here
	end,
}
