return {
	"akinsho/toggleterm.nvim",
	-- cmd = "toggleterm",
	config = function()
		require("toggleterm").setup({
			size = 20,
			open_mapping = [[<c-\>]],
			hide_numbers = true,
			shade_filetypes = {},
			shade_terminals = true,
			shading_factor = 2,
			start_in_insert = true,
			insert_mappings = true,
			persist_size = true,
			direction = "float",
			close_on_exit = true,
			shell = vim.o.shell,
			float_opts = {
				border = "single",
				winblend = 0,
				highlights = {
					border = "normal",
					background = "normal",
				},
			},
		})

		vim.keymap.set("n", "<F7>", "<cmd>ToggleTerm<CR>", { desc = "ToggleTerm" })
		vim.keymap.set("t", "<F7>", "<cmd>ToggleTerm<CR>", { desc = "ToggleTerm" })
	end,
}
