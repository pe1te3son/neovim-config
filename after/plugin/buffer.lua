-- spacemacs like buffer management
local function switch_to_last_buffer()
  local all_buffers = vim.api.nvim_list_bufs()
  local current_buffer = vim.api.nvim_get_current_buf()
  local local_buffers = {}

  for _, buf in ipairs(all_buffers) do
    if vim.api.nvim_buf_get_option(buf, 'buflisted') then
      if buf ~= 1 and buf ~= current_buffer then
        table.insert(local_buffers, buf)
      end
    end
  end

  if #local_buffers > 0 then
    local last_buffer = local_buffers[#local_buffers]
    vim.api.nvim_set_current_buf(last_buffer)
  end
end

local function delete_buffer_by_id(buffer_id)
  vim.api.nvim_command('bdelete ' .. buffer_id)
end

local function is_modified(buffr)
  return vim.api.nvim_buf_get_option(buffr, 'modified')
end

vim.keymap.set("n", "<leader>bd", function()
  local current_buffer = vim.api.nvim_get_current_buf()

  if is_modified(current_buffer) then
    print("Buffer has unsaved changes.")
    return
  end

  switch_to_last_buffer()
  delete_buffer_by_id(current_buffer)
end)

vim.keymap.set("n", "<leader><Tab>", function()
  switch_to_last_buffer()
end)