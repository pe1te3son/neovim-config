local wk = require("which-key")

wk.setup({
  icons = {
    breadcrumb = "»", -- symbol used in the command line area that shows your active key combo
    separator = "-",  -- symbol used between a key and it's label
    group = "+",      -- symbol prepended to a group
  },
  triggers_blacklist = {
    -- list of mode / prefixes that should never be hooked by WhichKey
    -- this is mostly relevant for keymaps that start with a native binding
    i = { "j", "k" },
    v = { "j", "k" },
  },
  -- your configuration comes here
  -- or leave it empty to use the default settings
  -- refer to the configuration section below
})

wk.register({
  ["<leader>"] = {
    ["<space>"] = { "Open commands" },
    j = { "Hop char after cursor" },
    k = { "Hop char before cursor" },
    i = { "Hop char any case anywhere" },
    d = {
      name = "+Dap"
    },
    r = {
      name = "+Rust",
      m = { "Expand macro" },
      e = { "Explain error" },
      o = { "Open docs" },
      i = { "Render diagnostics" },
    },
    w = {
      name = "+Window",
      ["/"] = { "Split window vertically" },
      ["?"] = { "Split window horizontaly" },
      l = { "Move to the window on the right" },
      h = { "Move to the window on the left" },
      j = { "Move to the window below" },
      k = { "Move to the window above" },
    },
    ["<Tab>"] = { "Switch to the last buffer" },
    u = { "Toggle undotree" },
    y = { "Yank+ to system clipboard" },
    Y = { "Yank line to system clipboard" },
    v = {
      name = "+Lsp",
      h = { "Open help" },
      a = { "Lsp code action" },
      r = { "Lsp reference" },
      n = { "Lsp rename" },
      s = { "Lsp workspace symbol" },
      f = { "Lsp format" },
      d = { "Open Float diagnostics" },
    },
    f = {
      name = "+Find",
      f = { "Find file" },
    },
    a = {
      name = "+Ranger/Hop",
      r = { "Open ranger" },
      l = { "Hop line" },
    },
    s = {
      p = { "Search in Project" },
      l = { "Open last search" },
      name = "+Search",
      s = { name = "+Open spectre" },
    },
    b = {
      name = "+Buffer",
      d = { "Close buffer" },
      b = { "Open buffer list" },
    },
    e = {
      name = "+Explorer",
      l = { "Open error list" },
      x = { "Open explorer" },
    },
    gi = {
      name = "+Git",
      s = { "Status" },
      b = { "Blame" },
      d = { "Diff" },
    },
    c = {
      name = "+Copilot",
      p = { "Chat - Buffer" },
    },
  },
}, {
  mode = "n",
  prefix = "",
})

wk.register({
  ["<leader>"] = {
    c = {
      name = "+Copilot/Quickfix",
      p = { "Chat - Selection" },
      e = { "Explain - Selection" },
      r = { "quickfix - replace" },
    },
  },
}, {
  mode = "v",
  prefix = "",
})
