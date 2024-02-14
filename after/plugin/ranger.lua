require("ranger-nvim").setup({ replace_netrw = false, enable_cmds = false })
vim.api.nvim_set_keymap("n", "<leader>ar", "", {
  noremap = true,
  callback = function()
    require("ranger-nvim").open(true)
  end,
})
