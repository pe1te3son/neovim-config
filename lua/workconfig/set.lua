vim.opt.guicursor = "n-v-c-sm:block,i-ci-ve:ver25,r-cr-o:hor20"

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

if (os.getenv('TERMGUICOLORS') == 'false') then
  vim.opt.termguicolors = false
else
  vim.opt.termguicolors = true
end


vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"

vim.o.foldmethod = 'indent'
vim.o.foldlevel = 2
vim.o.foldlevelstart = 99
vim.o.foldnestmax = 2

vim.o.winbar = "%{%v:lua.vim.fn.expand('%:t')%} | %{%v:lua.require'nvim-navic'.get_location()%}"
