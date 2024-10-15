return {
	'nvim-telescope/telescope.nvim',
	dependencies = {
		'nvim-lua/plenary.nvim',
		{ 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
		'nvim-telescope/telescope-ui-select.nvim',
		{ 'ahmedkhalf/project.nvim'},
	},
	lazy = false, -- i get issues with project.nvim if i lazy load
	keys = {
		{'<leader>fo', ':Telescope find_files<CR>'},
		{'<leader>po', ':Telescope projects<CR>'},
		{'<leader>bl', ':Telescope buffers<CR>'},
	},
	config = function()
		require("project_nvim").setup{
			detection_methods = { "lsp", "pattern" },
			silent_chdir = true,
			patterns = {".git", "Makefile", "build.zig", "main.zig"}
		}
		require('telescope').load_extension('projects')

		require('telescope').setup {
			extensions = {
				fzf = {
					fuzzy = true,
					override_generic_sorter = true,
					override_file_sorter = true,
					case_mode = "smart_case",
				},
				["ui-select"] = {
					require("telescope.themes").get_dropdown{}
				},
			},
			pickers = {
				find_files = {
					disable_devicons = true
				},
			},
		}

		require("telescope").load_extension("ui-select")
		require("telescope").load_extension("projects")
	end,
}
