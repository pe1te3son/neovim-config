local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>bb', builtin.buffers, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>sl', builtin.live_grep, {})
vim.keymap.set('n', '<leader>ps', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)
vim.keymap.set('n', '<leader>vh', builtin.help_tags, {})

local telescope = require('telescope.builtin')
local telescope_last = 0
function telescope_resume()
  if telescope_last == 0 then
    telescope_last = 1
    telescope.live_grep()
  else
    telescope.resume()
  end
end
vim.keymap.set("n", "<leader>ss", telescope_resume)
