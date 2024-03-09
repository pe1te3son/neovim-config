local co_chat = require("CopilotChat")
co_chat.setup {
  debug = true
}

vim.keymap.set("n", "<leader>cp", function()
    local input = vim.fn.input("Copilot Chat: ")
    if input ~= "" then
      co_chat.ask(input, { selection = require("CopilotChat.select").buffer })
    end
  end,
  { noremap = true })

vim.keymap.set("v", "<leader>cp", function()
    local input = vim.fn.input("Chat about selection: ")
    if input ~= "" then
      co_chat.ask(input, { selection = require("CopilotChat.select").selection })
    end
  end,
  { noremap = true })


vim.keymap.set("v", "<leader>ce", function()
    co_chat.ask("Explain how it works", { selection = require("CopilotChat.select").selection })
  end,
  { noremap = true })
