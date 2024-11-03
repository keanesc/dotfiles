-- Pull in the wezterm API
local wezterm = require 'wezterm'

local colorscheme = require 'colorscheme'
local keymaps = require 'keymaps'
local opts = require 'opts'
local launch_menu = require 'launch_menu'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices
colorscheme.apply_to_config(config)
opts.apply_to_config(config)
keymaps.apply_to_config(config)
launch_menu.apply_to_config(config)

-- and finally, return the configuration to wezterm
return config
