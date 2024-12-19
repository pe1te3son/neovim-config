local wk = require("which-key")

wk.setup({
  icons = {
    breadcrumb = "»", -- symbol used in the command line area that shows your active key combo
    separator = "-",  -- symbol used between a key and it's label
    group = "+",      -- symbol prepended to a group
  },
  -- triggers_blacklist = {
  --   -- list of mode / prefixes that should never be hooked by WhichKey
  --   -- this is mostly relevant for keymaps that start with a native binding
  --   i = { "j", "k" },
  --   v = { "j", "k" },
  -- },
  -- your configuration comes here
  -- or leave it empty to use the default settings
  -- refer to the configuration section below
})

wk.add({
  { "<leader><space>", desc = "Open commands" },
  { "<leader>j",       desc = "Hop char after cursor" },
  { "<leader>k",       desc = "Hop char before cursor" },
  { "<leader>i",       desc = "Hop char any case anywhere" },
  { "<leader>d",       desc = "Delete+ to system clipboard" },
  { "<leader><Tab>",   desc = "Switch to the last buffer" },
  { "<leader>u",       desc = "Toggle undotree" },
  { "<leader>y",       desc = "Yank+ to system clipboard" },
  { "<leader>Y",       desc = "Yank line to system clipboard" },
  { "<leader>w",       group = "Window" },
  { "<leader>w/",      desc = "Split window vertically" },
  { "<leader>w?",      desc = "Split window horizontally" },
  { "<leader>wl",      desc = "Move to the window on the right" },
  { "<leader>wh",      desc = "Move to the window on the left" },
  { "<leader>wj",      desc = "Move to the window below" },
  { "<leader>wk",      desc = "Move to the window above" },
  { "<leader>v",       group = "Lsp" },
  { "<leader>vh",      desc = "Open help" },
  { "<leader>va",      desc = "Lsp code action" },
  { "<leader>vr",      desc = "Lsp reference" },
  { "<leader>vn",      desc = "Lsp rename" },
  { "<leader>vs",      desc = "Lsp workspace symbol" },
  { "<leader>vf",      desc = "Lsp format" },
  { "<leader>vd",      desc = "Open Float diagnostics" },
  { "<leader>f",       group = "Find" },
  { "<leader>ff",      desc = "Find file" },
  { "<leader>a",       group = "Ranger/Hop" },
  { "<leader>ar",      desc = "Open ranger" },
  { "<leader>al",      desc = "Hop line" },
  { "<leader>s",       group = "Search" },
  { "<leader>sp",      desc = "Search in Project" },
  { "<leader>sl",      desc = "Open last search" },
  { "<leader>ss",      group = "Open spectre" },
  { "<leader>b",       group = "Buffer" },
  { "<leader>bd",      desc = "Close buffer" },
  { "<leader>bb",      desc = "Open buffer list" },
  { "<leader>e",       group = "Explorer" },
  { "<leader>el",      desc = "Open error list" },
  { "<leader>ex",      desc = "Open explorer" },
  { "<leader>gi",      group = "Git" },
  { "<leader>gis",     desc = "Status" },
  { "<leader>gib",     desc = "Blame" },
  { "<leader>gid",     desc = "Diff" },
  { "<leader>c",       group = "Copilot" },
  { "<leader>cp",      desc = "Chat - Buffer" },
}, {
  mode = "n",
  prefix = "",
})

wk.add({
  { "<leader>c",  group = "Copilot/Quickfix" },
  { "<leader>cp", desc = "Chat - Selection" },
  { "<leader>ce", desc = "Explain - Selection" },
  { "<leader>cr", desc = "quickfix - replace" },
}, {
  mode = "v",
  prefix = "",
})
