local light = require("onsetGlaze.config").is_day()
local palette = require("onsetGlaze.colors").dark

if light then
  palette = require("onsetGlaze.colors").light
end

local theme = {}
local theme = {}

theme = {
  normal = {
    a = { bg = light and palette.base3 or palette.bg_normal, fg = palette.bg0, gui = 'bold' },
    b = { bg = light and palette.bg1 or palette.bg0, fg = light and palette.base3 or palette.bg_normal },
    c = { bg = light and palette.bg1 or palette.bg0, fg = light and palette.base3 or palette.fg0 },
  },
  insert = {
    a = { bg = palette.bg_insert, fg = palette.bg0, gui = 'bold' },
    b = { bg = light and palette.bg1 or palette.bg0, fg = light and palette.base3 or palette.bg_insert },
    c = { bg = light and palette.bg1 or palette.bg0, fg = light and palette.base3 or palette.fg0 },
  },
  visual = {
    a = { bg = palette.bg_visual, fg = palette.bg0, gui = 'bold' },
    b = { bg = light and palette.bg1 or palette.bg0, fg = light and palette.base3 or palette.bg_visual },
    c = { bg = light and palette.bg1 or palette.bg0, fg = light and palette.base3 or palette.fg0 },
  },
  replace = {
    a = { bg = palette.yellow, fg = palette.bg0, gui = 'bold' },
    b = { bg = light and palette.bg1 or palette.bg0, fg = light and palette.base3 or palette.yellow },
    c = { bg = light and palette.bg1 or palette.bg0, fg = light and palette.base3 or palette.fg0 },
  },
  command = {
    a = { bg = palette.bg_command, fg = palette.bg0, gui = 'bold' },
    b = { bg = light and palette.bg1 or palette.bg0, fg = light and palette.base3 or palette.bg_command },
    c = { bg = light and palette.bg1 or palette.bg0, fg = light and palette.base3 or palette.fg0 },
  },
  terminal = {
    a = { bg = palette.purple, fg = palette.bg0, gui = 'bold' },
    b = { bg = light and palette.bg1 or palette.bg0, fg = light and palette.base3 or palette.purple },
    c = { bg = light and palette.bg1 or palette.bg0, fg = light and palette.base3 or palette.fg0 },
  },
  inactive = {
    a = { bg = palette.bg0, fg = palette.fg0, gui = 'bold' },
    b = { bg = light and palette.bg1 or palette.bg0, fg = light and palette.base3 or palette.fg0 },
    c = { bg = light and palette.bg1 or palette.bg0, fg = light and palette.base3 or palette.fg0 },
  },
}

return theme
