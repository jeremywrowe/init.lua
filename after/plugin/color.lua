function SetColors(color)
	color = color or "gruvbox"
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Norlmal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NorlmalFloat", { bg = "none" })
end

SetColors()
