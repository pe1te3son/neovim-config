local co_chat = require("CopilotChat")
co_chat.setup {
  debug = false,
  window = {
    layout = 'float',       -- 'vertical', 'horizontal', 'float'
    -- Options below only apply to floating windows
    relative = 'editor',    -- 'editor', 'win', 'cursor', 'mouse'
    border = 'single',      -- 'none', single', 'double', 'rounded', 'solid', 'shadow'
    width = 0.8,            -- fractional width of parent
    height = 0.8,           -- fractional height of parent
    row = nil,              -- row position of the window, default is centered
    col = nil,              -- column position of the window, default is centered
    title = 'Copilot Chat', -- title of chat window
    footer = "",            -- footer of chat window
    zindex = 1,             -- determines if window is on top or below other floating windows
  },
  -- default mappings
  mappings = {
    -- close = 'q',
    -- reset = '<C-S-l>',
    -- complete = '<C-space>',
    -- submit_prompt = '<CR>',
    -- accept_diff = '<C-y>',
    -- show_diff = '<C-d>',
    complete = {
      detail = 'Use @<Tab> or /<Tab> for options.',
      insert = '<C-space>',
    },
    close = {
      normal = 'q',
      insert = '<C-c>'
    },
    reset = {
      normal = '<C-S-l>',
      insert = '<C-l>'
    },
    submit_prompt = {
      normal = '<CR>',
      insert = '<C-m>'
    },
    accept_diff = {
      normal = '<C-y>',
      insert = '<C-y>'
    },
    show_diff = {
      normal = 'gd'
    },
    show_info = {
      normal = 'gp'
    },
    show_context = {
      normal = 'gs'
    },
  },
}
vim.keymap.set('i', '<C-u>', '<Plug>(copilot-accept-word)', { remap = true })
vim.keymap.set('i', '<C-o>', '<Plug>(copilot-accept-line)')

vim.g.copilot_filetypes = { rust = false }

vim.keymap.set("n", "<leader>cc", '<cmd>lua require("CopilotChat").toggle()<CR>',
  { noremap = true })

vim.keymap.set("n", "<leader>cp", function()
    local input = vim.fn.input("Copilot Chat - Buffer: ")
    if input ~= "" then
      co_chat.ask(input, { selection = require("CopilotChat.select").buffer })
    end
  end,
  { noremap = true })

vim.keymap.set("v", "<leader>cp", function()
    local input = vim.fn.input("Copilot Chat - Selection: ")
    if input ~= "" then
      co_chat.ask(input, { selection = require("CopilotChat.select").visual })
    end
  end,
  { noremap = true })

vim.keymap.set("v", "<leader>ce", function()
    co_chat.ask("Explain how it works", { selection = require("CopilotChat.select").visual })
  end,
  { noremap = true })
