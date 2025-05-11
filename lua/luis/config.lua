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
	"gruvbox", -- 1
	"rose-pine-main", -- 2
	"tokyonight", -- 3
	"solarized", -- 4
	"everforest", -- 5
	"nord", -- 6
}

ColorPencil(colorscheme[6], true)
