-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- For example, changing the color scheme:

config.colors = {
	foreground = "#839496", -- Solarized base0
	background = "#002b36", -- Solarized base03
	cursor_bg = "#93a1a1", -- Solarized base1
	cursor_border = "#93a1a1", -- Solarized base1
	cursor_fg = "#002b36", -- Solarized base03
	selection_bg = "#586e75", -- Solarized base01
	selection_fg = "#fdf6e3", -- Solarized base2
	ansi = { "#073642", "#dc322f", "#859900", "#b58900", "#268bd2", "#d33682", "#2aa198", "#eee8d5" }, -- Solarized colors
	brights = { "#657b83", "#dc322f", "#859900", "#b58900", "#268bd2", "#d33682", "#2aa198", "#fdf6e3" }, -- Solarized bright colors
}

config.font = wezterm.font("MesloLGS Nerd Font Mono")
config.font_size = 18

config.enable_tab_bar = false

config.window_decorations = "RESIZE"
config.window_background_opacity = 1
config.macos_window_background_blur = 5

-- and finally, return the configuration to wezterm
return config
