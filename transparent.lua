return {
  'xiyaowong/transparent.nvim',
  config = function()
    require('transparent').setup {
      groups = {
        'Normal',
        'NormalNC',
        'Comment',
        'Constant',
        'Special',
        'Identifier',
        'Statement',
        'PreProc',
        'Type',
        'Underlined',
        'Todo',
        'String',
        'Function',
        'Conditional',
        'Repeat',
        'Operator',
        'Structure',
        'LineNr',
        'NonText',
        'SignColumn',
        'CursorLine',
        'CursorLineNr',
        'StatusLine',
        'StatusLineNC',
        'EndOfBuffer',
      },
      extra_groups = {
        -- Neo-tree groups
        'NeoTreeNormal',
        'NeoTreeNormalNC',
        'NeoTreeEndOfBuffer',
        'NeoTreeWinSeparator',
        'NeoTreeCursorLine',
        'NeoTreeGitModified',
        'NeoTreeGitUntracked',
        'NeoTreeGitAdded',
        'NeoTreeGitDeleted',
        'NeoTreeGitConflict',
      },
      exclude_groups = {
        'NormalFloat',
        'NvimTreeNormal', -- this is not Neo-tree; keep it excluded if you're also using NvimTree
        'BufferLineTabClose',
        'BufferLineFill',
        'BufferLineBackground',
        'BufferLineSeperator',
        'BufferLineIndicatorSelected',
      },
    }

    -- Force highlight links after setup
    vim.cmd [[
      hi! link NeoTreeNormal Normal
      hi! link NeoTreeNormalNC NormalNC
      hi! link NeoTreeEndOfBuffer EndOfBuffer
      hi! link NeoTreeWinSeparator LineNr
    ]]
  end,
}
