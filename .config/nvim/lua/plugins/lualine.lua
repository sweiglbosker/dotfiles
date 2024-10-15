return {
	"nvim-lualine/lualine.nvim",
	dependencies = {
		"nvim-tree/nvim-web-devicons"
	},
	config = function()
		local custom_theme = require'lualine.themes.base16'
		custom_theme.normal.b.fg = '#cacaca'
		custom_theme.normal.c.fg = '#4c4c4c'
		require('lualine').setup {
			options = {
				theme = custom_theme,
				component_separators = '',
				section_separators = '',
			},
			sections = {
				lualine_a = {'mode'},
				lualine_b = {'branch', 'diff', 'diagnostics'},
				lualine_c = {'filename'},
				lualine_x = {'filetype'},
				lualine_y = {},
				lualine_z = {'location'},
			},
		}
	end
}
