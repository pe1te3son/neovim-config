function ColorMyPencils(color)
	color = color or "sonokai"
  vim.g.sonokai_style = "maia"
  vim.g.sonokai_enable_italic = 1
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

end

ColorMyPencils()
