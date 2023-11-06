return {
    "rebelot/heirline.nvim",
    event = "UIEnter",
    dependencies = {
        'williamboman/mason.nvim',
        'williamboman/mason-lspconfig.nvim',
        'neovim/nvim-lspconfig',
        'mfussenegger/nvim-dap',
        "rcarriga/nvim-dap-ui",
    },
    config = function()
        local statusline = require("heirline.statusline.statusline")
        local bufferline = require("heirline.tabline.tabline")

        require("heirline").setup({
            statusline = statusline,
            tabline = bufferline
        })
    end
}
