-- ~/.config/nvim/lua/plugins/persistence.lua
return {
  'folke/persistence.nvim',
  event = 'BufReadPre', -- Load early so sessions are available
  opts = {
    dir = vim.fn.stdpath 'state' .. '/sessions/',
    options = { 'buffers', 'curdir', 'tabpages', 'winsize' },
  },
}
