return {
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		opts = {},
	},
	{
		"rose-pine/neovim",
		lazy = false,
		priority = 1000, -- make sure to load this before all the other start plugins
		name = "rose-pine",
		config = function()
			-- vim.cmd("colorscheme rose-pine")
			-- vim.cmd("colorscheme rose-pine-main")
			-- vim.cmd("colorscheme rose-pine-moon")
			-- vim.cmd("colorscheme rose-pine-dawn")
		end,
	},
	{
		"ellisonleao/gruvbox.nvim",
		lazy = false,
		priority = 1000,
		config = true,
		opts = function()
			vim.cmd("colorscheme gruvbox")
		end,
	},
	{
		"maxmx03/solarized.nvim",
		lazy = false,
		priority = 1000,
		opts = {},
		config = function(_, opts)
			vim.o.termguicolors = true
			vim.o.background = "dark"
			require("solarized").setup(opts)
		end,
	},
	{
		"neanias/everforest-nvim",
		version = false,
		lazy = false,
		priority = 1000, -- make sure to load this before all the other start plugins
		-- Optional; default configuration will be used if setup isn't called.
		config = function()
			require("everforest").setup({
				background = "hard",
				-- Your config here
			})
		end,
	},
	{
		"shaunsingh/nord.nvim",
		lazy = false,
		priority = 1000,
	},
}
