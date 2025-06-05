return {
  'karb94/neoscroll.nvim',
  event = 'VeryLazy',
  opts = {
    mappings = {},
    hide_cursor = false,
    stop_eof = true,
    respect_scrolloff = false,
    cursor_scrolls_alone = true,
  },
  config = function(_, opts)
    local neoscroll = require 'neoscroll'
    local scroll = neoscroll.scroll

    neoscroll.setup(opts)

    local map = vim.keymap.set
    local options = { silent = true }

    -- half page scroll up
    map('n', '<C-u>', function()
      scroll(-vim.wo.scroll, { move_cursor = true, duration = 350 })
    end, options)
    -- half page scroll down
    map('n', '<C-d>', function()
      scroll(vim.wo.scroll, { move_cursor = true, duration = 350 })
    end, options)
    -- full page scroll up
    map('n', '<C-b>', function()
      scroll(-vim.api.nvim_win_get_height(0), { move_cursor = true, duration = 350 })
    end, options)
    -- full page scroll down
    map('n', '<C-f>', function()
      scroll(vim.api.nvim_win_get_height(0), { move_cursor = true, duration = 350 })
    end, options)
    -- 10 lines down up without mouse
    map('n', '<C-y>', function()
      scroll(-10, { move_cursor = false, duration = 100 })
    end, options)
    -- 10 lines down without mouse
    map('n', '<C-e>', function()
      scroll(10, { move_cursor = false, duration = 100 })
    end, options)
  end,
}
