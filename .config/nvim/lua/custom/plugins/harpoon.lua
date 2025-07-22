return {
  -- {{{ Define the Harpoon lazy.vim specificaiton.

  'ThePrimeagen/harpoon',
  enabled = true,
  branch = 'harpoon2',
  dependencies = {
    'nvim-lua/plenary.nvim',
  },

  -- ----------------------------------------------------------------------- }}}
  -- {{{ Defin events to load Harpoon.

  keys = function()
    local keys = {
      -- Harpoon marked files 1 through 4
      {
        '<leader>h',
        function()
          require('harpoon'):list():select(1)
        end,
        desc = 'Harpoon buffer 1',
      },

      {
        '<leader>j',
        function()
          require('harpoon'):list():select(2)
        end,
        desc = 'Harpoon buffer 2',
      },

      {
        '<leader>k',
        function()
          require('harpoon'):list():select(3)
        end,
        desc = 'Harpoon buffer 3',
      },

      {
        '<leader>l',
        function()
          require('harpoon'):list():select(4)
        end,
        desc = 'Harpoon buffer 4',
      },

      -- Harpoon user interface.
      {
        '<leader>m',
        function()
          local harpoon = require 'harpoon'
          harpoon.ui:toggle_quick_menu(harpoon:list())
        end,
        desc = 'Harpoon Toggle Menu',
      },

      {
        '<leader>a',
        function()
          require('harpoon'):list():add()
        end,
        desc = 'Harpoon Tadd file',
      },
    }
    return keys
  end,

  -- ----------------------------------------------------------------------- }}}
  -- {{{ Use Harpoon defaults or my customizations.

  opts = {
    settings = {
      enter_on_sendcmd = false,
      excluded_filetypes = { 'harpoon', 'alpha', 'dashboard', 'gitcommit' },
      mark_branch = false,
      save_on_change = true,
      save_on_toggle = false,
      sync_on_ui_close = false,
      tmux_autoclose_windows = false,
    },
  },

  -- ----------------------------------------------------------------------- }}}
}
