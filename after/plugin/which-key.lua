local wk = require("which-key")

wk.setup({
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
    d = { "Delete+ to system clipboard" },
    ["<C-w>"] = { "Split window horizontally" },
    ["w/"] = { "Split window vertically" },
    wl = { "Move to the window on the right" },
    wh = { "Move to the window on the left" },
    wj = { "Move to the window below" },
    wk = { "Move to the window above" },
    ["<Tab>"] = { "Switch to the last buffer" },
    u = { "Toggle undotree" },
    y = { "Yank+ to system clipboard" },
    Y = { "Yank line to system clipboard" },
    vh = { "Open help" },
    vd = { "Open diagnostics" },
    vr = {
      a = { "Lsp code action" },
      r = { "Lsp reference" },
      n = { "Lsp rename" },
    },
    f = {
      name = "+Find",
      f = { "Find file" },
    },
    a = {
      name = "+Ranger",
      r = { "Open ranger" },
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
    t = {
      name = "+Theme",
      c = { "Change" },
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
