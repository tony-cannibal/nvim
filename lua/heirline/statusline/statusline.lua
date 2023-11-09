local conditions = require("heirline.conditions")

local ViMode = require("heirline.statusline.vimode")
local Git = require("heirline.statusline.git")
local Location = require("heirline.statusline.ruler")
local Fileutils = require("heirline.statusline.fileutils")
local Diagnostics = require("heirline.statusline.diagnostics")
local LSPActive = require("heirline.statusline.lsp")
local Filename = require("heirline.statusline.filename")
local Treesitter = require("heirline.statusline.ts")
local colors = require("heirline.colors.gruvbox")

local Align = { provider = "%=" }
local Space = { provider = " " }
-- local left_sep = { provider = " " }
local right_sep = { provider = " | " }

local left_bar = {
    {
        ViMode
    },
    {
        Diagnostics,
        {
            condition = function()
                local diagnostics = conditions.has_diagnostics()
                local gitstatus = conditions.is_git_repo()
                return diagnostics and gitstatus
            end,
            provider = " | "
            -- provider = " 󰤃 "
        },
        {
            condition = function()
                return conditions.is_git_repo() and not conditions.has_diagnostics()
            end,
            provider = " "
        },
        Git,
        {
            condition = function()
                return conditions.is_git_repo()
            end,
            provider = " "
        },
        hl = { bg = colors.bg_light }
    },
    {
        Space,
        Filename,
        Space,
        hl = { bg = colors.bg }
    }
}

local right_bar = {
    {
        {
            condition = function()
                local lsp = conditions.lsp_attached()
                local ts = require "nvim-treesitter.parsers".has_parser()
                return lsp or ts
            end,
            provider = " "
        },
        Treesitter,
        {
            condition = function()
                local lsp = conditions.lsp_attached()
                local ts = require "nvim-treesitter.parsers".has_parser()
                return lsp or ts
            end,
            provider = " | "
            -- provider = " 󰤃 "
        },
        LSPActive,
        {
            condition = function()
                local lsp = conditions.lsp_attached()
                local ts = require "nvim-treesitter.parsers".has_parser()
                return lsp or ts
            end,
            provider = " "
        },
        hl = { bg = colors.bg }
    },
    {
        Space,
        Fileutils.FileType,
        right_sep,
        Location.Ruler,
        Space,
        hl = { bg = colors.bg_light }
    },
    {
        Location.ScrollBar
    }
}



local statusline = {
    left_bar,
    { Align, hl = { bg = colors.bg_dark } },
    right_bar
}

return statusline
