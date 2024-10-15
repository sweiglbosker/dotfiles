return {
	'mfussenegger/nvim-dap',
	dependencies = {
		{ 
			'nvim-telescope/telescope-dap.nvim', 
			config = function()
				require('telescope').load_extension('dap')
			end
		},
		{
			'rcarriga/nvim-dap-ui',
			dependencies = { 'nvim-neotest/nvim-nio'},
			lazy = true,
			config = function()
				require("dapui").setup()

				local dap = require("dap")
				local dapui = require("dapui")
				
				dap.listeners.after.event_initialized["dapui_config"] = function()
					dapui.open()
				end
				dap.listeners.before.event_terminated["dapui_config"] = function()
					dapui.close()
				end
				dap.listeners.before.event_exited["dapui_config"] = function()
					dapui.close()
				end
			end
		},
		'theHamsta/nvim-dap-virtual-text',
	},
	keybinds = {
		{'<leader>db', 'dap.toggle_breakpoint', {}},
		{'<leader>dp', 'dap.continue', {}},
	},
	config = function()
		local dap = require('dap')

		dap.adapters.gdb = {
			type = "executable",
			command = "gdb",
			args = { "-i", "dap" },
		}

		dap.configurations.c = {
			{
				name = "Launch",
				type = "gdb",
				request = "launch",
				program = function()
					vim.fn.input(
						"Path to executable: ",
						vim.fn.getcwd() .. "/",
						"file"
					)
				end,
				cwd = "${workspaceFolder}",
				stopAtBeginningOfMainSubprogram = false,
			},
			{
				name = "Select and attach to process",
				type = "gdb",
				request = "attach",
				program = function()
					return vim.fn.input("Path to executable", vim.fn.getcwd() .. "/", "file")
				end,
				pid = function()
					local name = vim.fn.input("Executable name (filter): ")
					return require("dap.utils").pick_process({ filter = name })
				end,
				cwd = '${workspaceFolder}',
			},
			-- TODO: remote debugging
		}

		require('nvim-dap-virtual-text').setup({})
		vim.g.dap_virtual_text = true
	end
}
