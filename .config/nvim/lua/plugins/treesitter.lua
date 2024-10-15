return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function() 
		local configs = require("nvim-treesitter.configs")
		
		configs.setup({
			ensure_installed = {"c", "markdown", "markdown_inline", "lua", "zig", "devicetree", "glsl", "objdump"},
			sync_install = false,
			highlight = { enable = true },
			rainbow = {
				enable = true,
				extended_mode = false,
				max_file_lines = nil,
			},
		})
	end
}
