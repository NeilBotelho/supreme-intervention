return {
	{
		'mfussenegger/nvim-dap',

		dependencies = {
			"williamboman/mason.nvim",
			"rcarriga/nvim-dap-ui",
			"nvim-dap",
			"mfussenegger/nvim-dap-python",
			"theHamsta/nvim-dap-virtual-text",
			"nvim-neotest/nvim-nio",
			'Weissle/persistent-breakpoints.nvim',
		},
		config = function()
			local dap = require('dap')
			local dapui = require("dapui")

			require("nvim-dap-virtual-text").setup()
			dapui.setup()
			require('persistent-breakpoints').setup {
				load_breakpoints_event = { "BufReadPost" }
			}
			dap.adapters.python = {
				type = "executable",
				command = "python",
				args = { '-m', 'debugpy.adapter' },
			}

			dap.configurations.python = { {
				type = "python",
				request = "launch",
				name = "Launch file",
				program = "${file}",
				pythonPath = "python",
				exitAfterTaskReturns = false,
				debugAutoInterpretAllModules = false,

			} }

			-- vim.keymap.set("n", "<leader>tb", dap.toggle_breakpoint)
			-- vim.keymap.set("n", "<leader>gc", dap.run_to_cursor)

			vim.keymap.set('n', '<leader>tb', function() require('persistent-breakpoints.api').toggle_breakpoint() end)

			vim.keymap.set('n', '<F5>', function() require('dap').continue() end)
			vim.keymap.set('n', '<F10>', function() require('dap').step_over() end)
			vim.keymap.set('n', '<F11>', function() require('dap').step_into() end)
			vim.keymap.set('n', '<F12>', function() require('dap').step_out() end)

			vim.keymap.set('n', '<leader>db', function() require('dap').continue() end)
			vim.keymap.set('n', '<leader>dn', function() require('dap').step_over() end)
			vim.keymap.set('n', '<leader>ds', function() require('dap').step_into() end)
			vim.keymap.set('n', '<leader>do', function() require('dap').step_out() end)
			-- vim.keymap.set("n", "<leader>tB", function() require 'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: ')) end)
			vim.keymap.set("n", "<leader>tB", function() require 'persistent-breakpoints.api'.set_conditional_breakpoint() end)

			vim.keymap.set('n', '<Leader>dl', function() require('dap').list_breakpoints() end)
			vim.keymap.set('n', '<Leader>dc', function() require('persistent-breakpoints.api').clear_all_breakpoints() end)

			vim.keymap.set('n', '<Leader>dr', function() require('dap').repl.open() end)
			vim.keymap.set('n', '<Leader>dl', function() require('dap').run_last() end)


			dap.listeners.after.event_initialized["dapui_config"] = function()
				dapui.open()
			end
			dap.listeners.before.event_terminated["dapui_config"] = function()
				dapui.close()
			end
			dap.listeners.before.event_exited["dapui_config"] = function()
				dapui.close()
			end
			vim.keymap.set("n", "<leader>dut", function() require 'dapui'.toggle() end)
			vim.keymap.set("n", "<leader>dur", function() require 'dapui'.open() end)

			-- vim.api.nvim_set_hl(0, 'DapBreakpoint', { ctermbg = 0, fg = '#993939', bg = '#31353f' })
			-- vim.api.nvim_set_hl(0, 'DapLogPoint', { ctermbg = 0, fg = '#61afef', bg = '#31353f' })
			-- vim.api.nvim_set_hl(0, 'DapStopped', { ctermbg = 0, fg = '#98c379', bg = '#31353f' })

			-- vim.fn.sign_define('DapBreakpoint',
			-- 	{ text = '', texthl = 'DapBreakpoint', linehl = 'DapBreakpoint', numhl = 'DapBreakpoint' })
			-- vim.fn.sign_define('DapBreakpointCondition',
			-- 	{ text = 'ﳁ', texthl = 'DapBreakpoint', linehl = 'DapBreakpoint', numhl = 'DapBreakpoint' })
			-- vim.fn.sign_define('DapBreakpointRejected',
			-- 	{ text = '', texthl = 'DapBreakpoint', linehl = 'DapBreakpoint', numhl = 'DapBreakpoint' })
			-- vim.fn.sign_define('DapLogPoint', {
			-- 	text = '',
			-- 	texthl = 'DapLogPoint',
			-- 	linehl = 'DapLogPoint',
			-- 	numhl =
			-- 	'DapLogPoint'
			-- })
			-- vim.fn.sign_define('DapStopped', { text = '', texthl = 'DapStopped', linehl = 'DapStopped', numhl = 'DapStopped' })
		end



	}
}
