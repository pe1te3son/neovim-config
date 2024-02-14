local telescope = require("telescope")
local actions = require("telescope.actions")

telescope.setup({
  defaults = {
    mappings = {
      i = {
        ["<C-j>"] = actions.move_selection_next,
        ["<C-k>"] = actions.move_selection_previous,
      },
    },
  },
})

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>bb', builtin.buffers, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>sp', builtin.live_grep, {})
-- vim.keymap.set('n', '<leader>ps', function()
-- 	builtin.grep_string({ search = vim.fn.input("Grep > ") })
-- end)
vim.keymap.set('n', '<leader>vh', builtin.help_tags, {})

local telescope_last = 0

function telescope_resume()
  if telescope_last == 0 then
    telescope_last = 1
    builtin.live_grep()
  else
    builtin.resume()
  end
end
vim.keymap.set("n", "<leader>sl", telescope_resume)

function vim.getVisualSelection()
	vim.cmd('noau normal! "vy"')
	local text = vim.fn.getreg('v')
	vim.fn.setreg('v', {})

	text = string.gsub(text, "\n", "")
	if #text > 0 then
		return text
	else
		return ''
	end
end

local opts = { noremap = true, silent = true }
vim.keymap.set('v', '<leader>sp', function()
  if telescope_last == 0 then
    telescope_last = 1
  end
	local text = vim.getVisualSelection()
	builtin.live_grep({ default_text = text })
end, opts)	
