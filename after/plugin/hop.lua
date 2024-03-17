local hop = require('hop')
local directions = require('hop.hint').HintDirection

hop.setup {
  keys = 'etovxqpdygfblzhckisuran',
  create_hl_autocmd = false,
  case_insensitive = false
}

vim.keymap.set('n', '<leader>i', function()
  hop.hint_char1({
    current_line_only = false,
    case_insensitive = true
  })
end, { remap = true })

vim.keymap.set('n', '<leader>j', function()
  hop.hint_char1({
    keys = 'hjklfdganvie',
    direction = directions.AFTER_CURSOR,
    current_line_only = false,
  })
end, { remap = true })

vim.keymap.set('n', '<leader>k', function()
  hop.hint_char1({
    keys = 'hjklfdganvie',
    direction = directions.BEFORE_CURSOR,
    current_line_only = false,
  })
end, { remap = true })

vim.keymap.set('n', '<leader>al', function()
  hop.hint_lines({
    current_line_only = false,
    multi_windows = true
  })
end, { remap = true })
