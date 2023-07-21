local wezterm = require 'wezterm';
return {
  colors = {
    foreground = "#f8f8f2",
    background = "#282634",
    cursor_bg = "#f8f8f0",
    cursor_border = "#f8f8f0",
    cursor_fg = "#060709",
    selection_bg = "#8077a8",
    selection_fg = "#f6e1ce",
    ansi = {"#040303","#f92672","#c2ffdf","#e6c000","#c2ffdf","#ffb8d1","#c5a3ff","#f8f8f0"},
    brights = {"#6090cb","#ff857f","#c2ffdf","#ffea00","#c2ffdf","#ffb8d1","#c5a3ff","#f8f8f0"},
  },
  font = wezterm.font_with_fallback({
    {family="IBM Plex Mono", weight="DemiBold"},
    "FreeMono",
  }),
  initial_cols = 140,
  initial_rows = 50,
  enable_wayland = false,
}
