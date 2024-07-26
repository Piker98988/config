-- Wezterm API
local wezterm = require "wezterm"
local colScheme = require "scheme"

-- Hold Config
local config = wezterm.config_builder()

-- Apply config here

-- Colour scheme
colScheme.setter(config)



-- Return config to wezterm
return config
