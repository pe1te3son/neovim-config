local hop = require('hop')
hop.setup {
  keys = 'etovxqpdygfblzhckisuran',
  create_hl_autocmd = false,
  case_insensitive = false,
  multi_windows = true,
}
local directions = require('hop.hint').HintDirection

vim.keymap.set('n', '<leader>aj', function()
  hop.hint_words({
    direction = directions.AFTER_CURSOR,
    current_line_only = false,
    multi_windows = false
  })
end, { remap = true })

vim.keymap.set('n', '<leader>ak', function()
  hop.hint_words({
    direction = directions.BEFORE_CURSOR,
    current_line_only = false,
    multi_windows = false
  })
end, { remap = true })

vim.keymap.set('n', '<leader>al', function()
  hop.hint_lines({ current_line_only = false })
end, { remap = true })
