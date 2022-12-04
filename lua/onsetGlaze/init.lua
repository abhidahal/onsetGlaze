local util = require("onsetGlaze.util")
local theme = require("onsetGlaze.theme")
local config = require("onsetGlaze.config")

local M = {}

function M._load()
    util.load(theme.setup())
end

M.setup = config.setup

M.colorscheme = M.load

return M
