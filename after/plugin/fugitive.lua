vim.keymap.set("n", "<leader>gs", vim.cmd.Git)

vim.keymap.set("n", "<leader>gbl", function()
    vim.cmd("Git blame")
end)
