vim.keymap.set("n", "<leader>gis", function()
  vim.cmd("vertical rightbelow Git")
end)
vim.keymap.set("n", "<leader>gid", vim.cmd.Gdiff)

vim.keymap.set("n", "<leader>gia", function()
  vim.cmd("diffput")
end)

vim.keymap.set("n", "<leader>gib", function()
  vim.cmd("Git blame")
end)
