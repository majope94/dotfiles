return {
  'mfussenegger/nvim-dap',
  event = 'VeryLazy',
  dependencies = {
    'rcarriga/nvim-dap-ui',
    'theHamsta/nvim-dap-virtual-text',
  },
  config = function()
    vim.keymap.set('n', '<leader>db', '<cmd>lua require("dap").toggle_breakpoint()<CR>', { silent = true })
    vim.keymap.set('n', '<leader>dc', '<cmd>lua require("dap").continue()<CR>', { silent = true })
    vim.keymap.set('n', '<leader>dn', '<cmd>lua require("dap").step_over()<CR>', { silent = true })
    vim.keymap.set('n', '<leader>di', '<cmd>lua require("dap").step_into()<CR>', { silent = true })
    vim.keymap.set('n', '<leader>do', '<cmd>lua require("dap").step_out()<CR>', { silent = true })
    vim.keymap.set('n', '<leader>dr', '<cmd>lua require("dap").repl.open()<CR>', { silent = true })
    vim.keymap.set('n', '<leader>dl', '<cmd>lua require("dap").run_last()<CR>', { silent = true })
  end,
}
