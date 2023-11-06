Treesitter = {
    provider = function()
        local icon = " "
        local status = require "nvim-treesitter.parsers".has_parser()
        if status == true then
            return icon .. " TS"
        else
            return ""
        end
    end,
    hl = { fg = "orange" }
}

return Treesitter
