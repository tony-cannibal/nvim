local ColorPencil = function(color, trans)
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
}

<<<<<<< HEAD
ColorPencil(colorscheme[4], true)
=======
ColorPencil(colorscheme[5], false)
>>>>>>> abea0f1558ba6baf27733ca73fe4af19048d09a3
