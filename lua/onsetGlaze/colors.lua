local M = {}

M.dark = {
  bg0         = '#1e1f2b',
  bg1         = '#282a3a',
  bg2         = '#1e1f2b',
  bg3         = '#1e1f2b',
  bg4         = '#1e1f2b',
  bg5         = '#1e1f2b',
  fg0         = '#ffffff',
  fg1         = '#657b83',
  fg2         = '#696d77',
  base1       = '#93a1a1',
  base2       = '#eee8d5',
  base3       = '#fdf6e3',
  red         = '#ff445d',
  orange      = '#ff9b5e',
  yellow      = '#ffd76d',
  green       = '#bad761',
  aqua        = '#9cd1bb',
  blue        = '#268bd2',
  purple      = '#c39ac9',
  voilet      = '#542471',
  bg_normal   = '#7fabff',
  bg_visual   = '#bbaff8',
  bg_command  = '#ffd4a7',
  bg_insert   = '#424465',
  diff_add    = '#dbfd72',
  diff_change = '#ffa55e',
  diff_delete = '#dc322f',
  none        = "NONE"
}

M.light = {
  bg0         = '#1e1f2b',
  bg1         = '#282a3a',
  bg2         = '#1e1f2b',
  bg3         = '#1e1f2b',
  bg4         = '#1e1f2b',
  bg5         = '#1e1f2b',
  fg0         = '#ffffff',
  fg1         = '#657b83',
  fg2         = '#696d77',
  base1       = '#93a1a1',
  base2       = '#eee8d5',
  base3       = '#fdf6e3',
  red         = '#ff445d',
  orange      = '#ff9b5e',
  yellow      = '#ffd76d',
  green       = '#bad761',
  aqua        = '#9cd1bb',
  blue        = '#268bd2',
  purple      = '#c39ac9',
  voilet      = '#542471',
  bg_normal   = '#7fabff',
  bg_visual   = '#bbaff8',
  bg_command  = '#ffd4a7',
  bg_insert   = '#424465',
  diff_add    = '#dbfd72',
  diff_change = '#ffa55e',
  diff_delete = '#dc322f',
  none        = "NONE"
}

function M.setup(opts)
  opts = opts or {}
  local config = require("onsetGlaze.config")

  local palette = M.dark
  if config.is_day() then
    palette = M.light
  end
  if type(palette) == "function" then
    palette = palette()
  end
  return palette
end

return M
