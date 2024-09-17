local wezterm = require 'wezterm'

local config = wezterm.config_builder()
config.color_scheme = 'Dracula+'

config.font = wezterm.font 'Source Code Pro for Powerline'
config.font_size = 14.0

config.initial_rows = 40
config.initial_cols = 160

config.send_composed_key_when_left_alt_is_pressed = true

return config
