local current_git_dir = ''
local function get_git_folder()
  if current_git_dir ~= '' then
    return current_git_dir
  end

  local dir = vim.fn.system('basename $(git rev-parse --show-toplevel)'):sub(1, -2)

  -- not in git repo
  if dir:sub(1, 5) == "fatal" then
    return current_git_dir
  end
  current_git_dir = 'git:' .. dir
  return current_git_dir
end

require('lualine').setup({
  options = {
    theme = 'auto', -- lualine theme
    component_separators = { left = '', right = '' },
    section_separators = { left = '', right = '' },
    disabled_filetypes = { -- Filetypes to disable lualine for.
      statusline = {},     -- only ignores the ft for statusline.
      winbar = {},         -- only ignores the ft for winbar.
    },

    ignore_focus = {}, -- If current filetype is in this list it'll
    -- always be drawn as inactive statusline
    -- and the last window will be drawn as active statusline.
    -- for example if you don't want statusline of
    -- your file tree / sidebar window to have active
    -- statusline you can add their filetypes here.

    always_divide_middle = true, -- When set to true, left sections i.e. 'a','b' and 'c'
    -- can't take over the entire statusline even
    -- if neither of 'x', 'y' or 'z' are present.

    globalstatus = false, -- enable global statusline (have a single statusline
    -- at bottom of neovim instead of one for  every window).
    -- This feature is only available in neovim 0.7 and higher.

    refresh = {          -- sets how often lualine should refresh it's contents (in ms)
      statusline = 2000, -- The refresh option sets minimum time that lualine tries
      tabline = 10000,   -- to maintain between refresh. It's not guarantied if situation
      winbar = 10000     -- arises that lualine needs to refresh itself before this time
      -- it'll do it.

      -- Also you can force lualine's refresh by calling refresh function
      -- like require('lualine').refresh()
    }
  },
  sections = {
    lualine_a = { 'mode' },
    lualine_b = {
      'branch',
      'diagnostics',
      get_git_folder
    },
    lualine_c = {

      {
        'filename',
        file_status = true,    -- Displays file status (readonly status, modified status)
        newfile_status = true, -- Display new file status (new file means no write after created)
        path = 1,              -- 0: Just the filename
        -- 1: Relative path
        -- 2: Absolute path
        -- 3: Absolute path, with tilde as the home directory
        -- 4: Filename and parent dir, with tilde as the home directory

        shorting_target = 40, -- Shortens path to leave 40 spaces in the window
        -- for other components. (terrible name, any suggestions?)
        symbols = {
          modified = '[+]',      -- Text to show when the file is modified.
          readonly = '[-]',      -- Text to show when the file is non-modifiable or readonly.
          unnamed = '[No Name]', -- Text to show for unnamed buffers.
          newfile = '[New]',     -- Text to show for newly created file before first write
        }
      },
      'diff'
    }
  }
})
