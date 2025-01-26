vim.g.gruvbox_material_background = "medium"

function ColorPencil(color, trans)
	vim.cmd.colorscheme(color)
	if trans == true then
		vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
		vim.api.nvim_set_hl(0, "EndOfBuffer", { bg = "none" })
		vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
		-- vim.cmd [[ highlight NoneText ctermfg=none guifg=none ]]
		--
		vim.api.nvim_set_hl(0, "hl-IblIndent", { bg = "none" })
	end
	vim.o.background = "dark"
end

local colorscheme = {
	"gruvbox",
	"rose-pine-main",
	"tokyonight",
	"solarized",
	"everforest",
	"gruvbox-material",
}

ColorPencil(colorscheme[6], true)
