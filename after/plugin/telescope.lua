local telescope = require("telescope")
local actions = require("telescope.actions")
local telescope_last = 0

telescope.setup({
  defaults = {
    mappings = {
      n = {
        ['q'] = actions.close,
        ['<C-c>'] = actions.close,
      },
      i = {
        ["<C-j>"] = actions.move_selection_next,
        ["<C-k>"] = actions.move_selection_previous,
      },
    },
  },
  pickers = {
    buffers = {
      initial_mode = 'normal',
      mappings = {
        n = {
          ["d"] = actions.delete_buffer,
        },
      },
    },
    --     find_files = {
    -- 	-- `hidden = true` will still show the inside of `.git/` as it's not `.gitignore`d.
    -- 	find_command = { "rg", "--files", "--hidden", "--glob", "!**/.git/*" },
    -- },
  }
})

require("telescope").load_extension("ui-select")

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', function()
  if telescope_last == 0 then
    telescope_last = 1
  end
  builtin.find_files()
end, {})

vim.keymap.set('n', '<leader>bo', builtin.buffers, {})
-- vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>sp', builtin.live_grep, {})

vim.keymap.set('n', '<leader>ps', function()
  builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)
vim.keymap.set('n', '<leader>vh', builtin.help_tags, {})
vim.keymap.set('n', '<leader><leader>', builtin.commands, {})


local function telescope_resume()
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
