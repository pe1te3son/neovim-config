local wk = require("which-key")

wk.setup ({
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
    ["w/"] = { "Split window vertically" },
    wl = { "Move to the window on the right" },
    wh = { "Move to the window on the left" },
    wj = { "Move to the window below" },
    wk = { "Move to the window above" },
    ["<Tab>"] = { "Switch to the last buffer" },
    u = { "Toggle undotree" },
    y = { "Yank to system clipboard" },
    vh = { "Open help" },
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
    g = {
      name = "+Git",
      s = { "Open git status" },
      b = { 
        name = "Open git blame",
        l = { "Open git blame line" },
      },
    },
    t = {
      name = "+Theme",
      c = { "Change" },
    },
  },
}, {
  mode = "n",
  prefix = "",
})
