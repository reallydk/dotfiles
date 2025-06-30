-- Pull in the wezterm API
local wezterm = require("wezterm")
local config = wezterm.config_builder and wezterm.config_builder() or {}

-- Appearance
config.font = wezterm.font("JetBrainsMono Nerd Font")
config.font_size = 18
config.enable_tab_bar = false
-- config.window_background_opacity = 0.98
config.default_cursor_style = "BlinkingBar"
config.cursor_blink_rate = 600
config.window_close_confirmation = "NeverPrompt"
config.window_decorations = "NONE"
config.color_scheme = "Catppuccin Mocha"
config.colors = {
	background = "#0F0F19",
}
config.window_padding = {
	left = 10,
	right = 10,
	top = 10,
	bottom = 10,
}
return config
