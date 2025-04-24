-- @see https://wezfurlong.org/wezterm/config/files.html

local wezterm = require 'wezterm'
local config = wezterm.config_builder()


-- Font
config.font = wezterm.font_with_fallback {
    'FiraCode Nerd Font Mono',
}
config.font_size = 13


-- Color scheme
config.color_scheme = 'BlulocoDark'


-- Key bindings
config.leader = { key = 't', mods = 'CTRL', timeout_milliseconds = 1000 }
config.keys = {
  {
    key = '|',
    mods = 'LEADER|SHIFT',
    action = wezterm.action.SplitHorizontal { domain = 'CurrentPaneDomain' },
  },
  {
    key = '-',
    mods = 'LEADER',
    action = wezterm.action.SplitVertical { domain = 'CurrentPaneDomain' },
  },
  {
    key = 'h',
    mods = 'LEADER',
    action = wezterm.action.ActivatePaneDirection "Left"
  },
  {
    key = 'j',
    mods = 'LEADER',
    action = wezterm.action.ActivatePaneDirection "Down"
  },
  {
    key = 'k',
    mods = 'LEADER',
    action = wezterm.action.ActivatePaneDirection "Up"
  },
  {
    key = 'l',
    mods = 'LEADER',
    action = wezterm.action.ActivatePaneDirection "Right"
  },
}


return config
