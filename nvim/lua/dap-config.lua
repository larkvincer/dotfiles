local dap = require('dap')
local dapui = require('dapui')
local dapVscodeJs = require("dap-vscode-js")

-- JavaScript setup
dapVscodeJs.setup({
  debugger_path = '/Users/pavlokuziv/Documents/vscode-js-debug',
  adapters = { 'pwa-node', 'pwa-chrome', 'pwa-msedge', 'node-terminal', 'pwa-extensionHost' }, -- which adapters to register in nvim-dap
})
for _, language in ipairs({ "typescript", "javascript" }) do
  dap.configurations[language] = {
    {
      type                      = "pwa-node",
      request                   = "launch",
      name                      = "Launch file",
      program                   = "${file}",
      cwd                       = "${workspaceFolder}",
      resolveSourceMapLocations = { "${workspaceFolder}/dist/**/*.js", "${workspaceFolder}/**", "!**/node_modules/**" },
      console                   = "integratedTerminal",
      runtimeExecutable         = "${workspaceFolder}/node_modules/.bin/ts-node",

    },
    {
      type                      = "pwa-node",
      request                   = "attach",
      name                      = "Attach to a process",
      processId                 = require 'dap.utils'.pick_process,
      cwd                       = "${workspaceFolder}",
      resolveSourceMapLocations = { "${workspaceFolder}/dist/**/*.js", "${workspaceFolder}/**", "!**/node_modules/**" },
      console                   = "integratedTerminal",
    }
  }
end

dapui.setup()

dap.listeners.after.event_initialized["dapui_config"] = function()
  dapui.open()
end
dap.listeners.before.event_terminated["dapui_config"] = function()
  dapui.close()
end
dap.listeners.before.event_exited["dapui_config"] = function()
  dapui.close()
end

-- dap.adapters.node2 = {
--   type    = 'executable',
--   command = 'node',
--   args    = { os.getenv('HOME') .. '/apps/node/out/src/nodeDebug.js' },
-- }

-- Signs for breakpoints
vim.fn.sign_define('DapBreakpoint', { text = '🔴', texthl = '', linehl = '', numhl = '' })
vim.fn.sign_define('DapBreakpointRejected', { text = '🔵', texthl = '', linehl = '', numhl = '' })
vim.fn.sign_define('DapStopped', { text = '➡️', texthl = '', linehl = '', numhl = '' })

-- Keymaps
vim.keymap.set('n', '<leader>dh', function() require "dap".toggle_breakpoint() end)
vim.keymap.set('n', '<leader>dH', ":lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>")
vim.keymap.set('n', '<CTRL-F11>', function() require "dap".step_out() end)
vim.keymap.set('n', '<F11>', function() require "dap".step_into() end)
vim.keymap.set('n', '<F10>', function() require "dap".step_over() end)
vim.keymap.set('n', '<F8>', function() require "dap".continue() end)
vim.keymap.set('n', '<F9>', function() require "dap".step() end)
vim.keymap.set('n', '<leader>dn', function() require "dap".run_to_cursor() end)
vim.keymap.set('n', '<leader>dc', function() require "dap".terminate() end)
vim.keymap.set('n', '<leader>dR', function() require "dap".clear_breakpoints() end)
vim.keymap.set('n', '<leader>de', function() require "dap".set_exception_breakpoints({ "all" }) end)
vim.keymap.set('n', '<leader>da', function() require "debugHelper".attach() end)
vim.keymap.set('n', '<leader>dA', function() require "debugHelper".attachToRemote() end)
vim.keymap.set('n', '<leader>di', function() require "dap.ui.widgets".hover() end)
vim.keymap.set('n', '<leader>d?',
  function() local widgets = require "dap.ui.widgets"; widgets.centered_float(widgets.scopes) end)
vim.keymap.set('n', '<leader>dk', ':lua require"dap".up()<CR>zz')
vim.keymap.set('n', '<leader>dj', ':lua require"dap".down()<CR>zz')
vim.keymap.set('n', '<leader>dr', ':lua require"dap".repl.toggle({}, "vsplit")<CR><C-w>l')
