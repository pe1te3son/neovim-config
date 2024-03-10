local co_chat = require("CopilotChat")
co_chat.setup {
  debug = false
}

vim.g.copilot_filetypes = { rust = false }

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
