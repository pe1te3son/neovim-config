if (vim.o.termguicolors) then
  require 'colorizer'.setup()
end

function ColorMyPencils(color)
  color = color or "bamboo"
  vim.g.sonokai_style = "maia"
  vim.g.sonokai_enable_italic = 1

  vim.g.moonflyVirtualTextColor = true
  vim.g.moonflyWinSeparator = 2

  vim.cmd.colorscheme(color)
  vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
  vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
  -- vim.cmd("set background=dark")
end

require('bamboo').setup {
  -- Main options --
  -- NOTE: to use the light theme, set `vim.o.background = 'light'`
  style = 'multiplex',                                      -- Choose between 'vulgaris' (regular), 'multiplex' (greener), and 'light'
  toggle_style_key = nil,                                   -- Keybind to toggle theme style. Leave it nil to disable it, or set it to a string, e.g. "<leader>ts"
  toggle_style_list = { 'vulgaris', 'multiplex', 'light' }, -- List of styles to toggle between
  transparent = false,                                      -- Show/hide background
  dim_inactive = true,                                      -- Dim inactive windows/buffers
  term_colors = true,                                       -- Change terminal color as per the selected theme style
  ending_tildes = false,                                    -- Show the end-of-buffer tildes. By default they are hidden
  cmp_itemkind_reverse = false,                             -- reverse item kind highlights in cmp menu

  -- Change code style ---
  -- Options are anything that can be passed to the `vim.api.nvim_set_hl` table
  -- You can also configure styles with a string, e.g. keywords = 'italic,bold'
  code_style = {
    comments = { italic = true },
    conditionals = { italic = true },
    keywords = {},
    functions = {},
    namespaces = { italic = true },
    parameters = { italic = true },
    strings = {},
    variables = {},
  },

  -- Lualine options --
  lualine = {
    transparent = false, -- lualine center bar transparency
  },

  -- Custom Highlights --
  colors = {}, -- Override default colors
  highlights = {
    ['@comment'] = { fg = '$grey' },

  }, -- Override highlight groups

  -- Plugins Config --
  diagnostics = {
    darker = false,     -- darker colors for diagnostic
    undercurl = true,   -- use undercurl instead of underline for diagnostics
    background = false, -- use background color for virtual text
  },
}


ColorMyPencils()
