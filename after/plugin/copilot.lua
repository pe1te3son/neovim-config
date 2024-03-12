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
    close = 'q',
    reset = '<C-S-l>',
    complete = '<C-space>',
    submit_prompt = '<CR>',
    accept_diff = '<C-y>',
    show_diff = '<C-d>',
  },
}

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
      co_chat.ask(input, { selection = require("CopilotChat.select").selection })
    end
  end,
  { noremap = true })


vim.keymap.set("v", "<leader>ce", function()
    co_chat.ask("Explain how it works", { selection = require("CopilotChat.select").selection })
  end,
  { noremap = true })
