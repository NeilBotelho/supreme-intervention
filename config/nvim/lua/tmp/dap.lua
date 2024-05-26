local noremap=function (mode,lhs,rhs,silent)
	if silent==nil then
		silent=true
	end
	   vim.keymap.set(mode, lhs,rhs,{noremap=true, silent=silent})
end

--dap
noremap("n","<F1>",":lua require'dap'.continue()<CR>")
noremap("n","<F2>",":lua require'dap'.step_over()<CR>")
noremap("n","<F3>",":lua require'dap'.step_into()<CR>")
noremap("n","<F4>",":lua require'dap'.step_out()<CR>")
noremap("n","<leader>tb",":lua require'dap'.toggle_breakpoint()<CR>")
noremap("n","<leader>tB",":lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>")
noremap("n","<leader>tlp",":lua require'dap'.set_breakpoint(nil,nil,vim.fn.input('Log point message: '))<CR>")
noremap("n","<leader>dr",":lua require'dap'.repl.open()<CR>")


require("nvim-dap-virtual-text").setup()



require'dapui'.setup()
local dap, dapui = require("dap"), require("dapui")
dap.listeners.after.event_initialized["dapui_config"] = function()
  dapui.open()
end
dap.listeners.before.event_terminated["dapui_config"] = function()
  dapui.close()
end
dap.listeners.before.event_exited["dapui_config"] = function()
  dapui.close()
end
noremap("n","<leader>dut",":lua require'dapui'.toggle()<CR>")
noremap("n","<leader>dur",":lua require'dapui'.open()<CR>")

-- debugpy


require('dap-python').setup('~/.local/share/dap/debugpy/bin/python')
require('dap-python').test_runner = 'pytest'
noremap("n","<leader>dn",":lua require('dap-python').test_method()<CR>")
noremap("n","<leader>df",":lua require('dap-python').test_class()<CR>")
noremap("v","<leader>ds","<ESC>:lua require('dap-python').debug_selection()<CR>")



dap.configurations.python = {
  {
    -- The first three options are required by nvim-dap
    type = 'python'; -- the type here established the link to the adapter definition: `dap.adapters.python`
    request = 'launch';
    name = "Debug pip install";

    -- Options below are for debugpy, see https://github.com/microsoft/debugpy/wiki/Debug-configuration-settings for supported options

    program = "/tmp/tst/pip/src/debug_pip.py"; -- This configuration will launch the current file if used
    -- program = "/home/neil/.local/share/projects/oss/pip/main/src/debug_pip.py"; -- This configuration will launch the current file if used
		args = {};
    pythonPath = function()
      -- debugpy supports launching an application with a different interpreter then the one used to launch debugpy itself.
      -- The code below looks for a `venv` or `.venv` folder in the current directly and uses the python within.
      -- You could adapt this - to for example use the `VIRTUAL_ENV` environment variable.
      local cwd = vim.fn.getcwd()
			if vim.fn.executable('/tmp/tst/venv/bin/python') == 1 then
        return '/tmp/tst/venv/bin/python'
      else
				print("Create /tmp/tst/venv before debugging")
      end
			
    end;
  },
}

