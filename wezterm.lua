local wezterm = require 'wezterm'
local config = {}

config.font = wezterm.font_with_fallback {
  { family="IBM Plex Mono", weight="DemiBold" },
  "FreeMono",
}
config.color_scheme = "Fairy Floss Dark (Gogh)"
config.initial_cols = 140
config.initial_rows = 50
config.enable_wayland = false

return config
