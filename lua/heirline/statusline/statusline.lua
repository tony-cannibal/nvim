require("heirline.colors.placeholder")

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

local statusline = {
    { ViMode,
        { Diagnostics, Git, hl = { bg = colors.bg_light } }, { Space, Filename, Space, hl = { bg = colors.bg } } },
    { Align, hl = { bg = colors.bg_dark } },
    { { Treesitter,  LSPActive, hl = { bg = colors.bg } }, { Fileutils.FileType, hl = { bg = colors.bg_light } },
        { Location.Ruler } }
}

return statusline
