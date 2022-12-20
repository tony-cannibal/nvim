local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
	PACKER_BOOTSTRAP = fn.system({
		"git",
		"clone",
		"--depth",
		"1",
		"https://github.com/wbthomason/packer.nvim",
		install_path,
	})
	print("Installing packer close and reopen Neovim...")
	vim.cmd([[packadd packer.nvim]])
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
	return
end

-- Have packer use a popup window
packer.init({
	display = {
		open_fn = function()
            return require("packer.util").float({ border = "rounded" })
		end,
	},
})


return packer.startup(function(use)

    use {'wbthomason/packer.nvim'}
    use {'nvim-lua/plenary.nvim'}
    use {'numToStr/Comment.nvim'}
    use {"akinsho/toggleterm.nvim"}
    use {'kyazdani42/nvim-web-devicons'}
    use {"lukas-reineke/indent-blankline.nvim"}
    use ('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate'})
    use {'nvim-lualine/lualine.nvim'}
    use {'akinsho/bufferline.nvim', tag = "v3.*"}
    use {'nvim-telescope/telescope.nvim', tag = '0.1.0'}
    use {"windwp/nvim-autopairs"}
    use 'lewis6991/impatient.nvim'

    -- Color Schemes
    use {'gruvbox-community/gruvbox'}
    use {'folke/tokyonight.nvim'}
    use {'lunarvim/darkplus.nvim'}

    -- LSP
    use {
      'VonHeikemen/lsp-zero.nvim',
      requires = {
        -- LSP Support
        {'neovim/nvim-lspconfig'},
        {'williamboman/mason.nvim'},
        {'williamboman/mason-lspconfig.nvim'},
        -- Autocompletion
        {'hrsh7th/nvim-cmp'},
        {'hrsh7th/cmp-buffer'},
        {'hrsh7th/cmp-path'},
        {'saadparwaiz1/cmp_luasnip'},
        {'hrsh7th/cmp-nvim-lsp'},
        {'hrsh7th/cmp-nvim-lua'},
        -- Snippets
        {'L3MON4D3/LuaSnip'},
        {'rafamadriz/friendly-snippets'},
      }
    }

    use {'goolord/alpha-nvim'}
    use {'nvim-tree/nvim-tree.lua'}
    use {'JoosepAlviste/nvim-ts-context-commentstring'}
    use {'norcalli/nvim-colorizer.lua'}

    if PACKER_BOOTSTRAP then
        require("packer").sync()
    end
end)
