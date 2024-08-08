if vim.g.neovide then
	vim.o.guifont = "CaskaydiaCove Nerd Font:h14"
	vim.opt.linespace = 0
	vim.g.neovide_scale_factor = 1.0
	vim.g.neovide_padding_top = 0
	vim.g.neovide_padding_bottom = 0
	vim.g.neovide_padding_right = 0
	vim.g.neovide_padding_left = 0
	-- Helper function for transparency formatting
	local alpha = function()
		return string.format("%x", math.floor(255 * vim.g.transparency or 0.6))
	end
	-- g:neovide_transparency should be 0 if you want to unify transparency of content and title bar.
	vim.g.neovide_transparency = 0.5
	vim.g.transparency = 0.6
	vim.g.neovide_background_color = "#0f1117" .. alpha()
	vim.g.neovide_scroll_animation_length = 0.3
	vim.g.neovide_hide_mouse_when_typing = false

	vim.g.neovide_underline_automatic_scaling = false
	vim.g.neovide_cursor_vfx_particle_speed = 50.0
end
