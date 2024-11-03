-- I am color_scheme.lua and I should live in ~/.config/wezterm/color_scheme.lua

local wezterm = require 'wezterm'

-- This is the module table that we will export
local module = {}

-- This function is private to this module and is not visible
-- outside.

local function get_appearance()
  if wezterm.gui then
    return wezterm.gui.get_appearance()
  end
  return 'Dark'
end

local function scheme_for_appearance(appearance)
  if appearance:find 'Dark' then
    return 'tokyonight_night'
    -- return 'Black Metal (Gorgoroth) (base16)'
    -- return 'Black Metal (Khold) (base16)'
    -- return 'Mono White (Gogh)'
    -- return 'Canvased Pastel (terminal.sexy)'
  else
        return 'tokyonight_night'
    -- return 'SeaShells'
    -- return 'Rosé Pine Dawn (base16)'
    -- return 'Everforest Light Soft (Gogh)'
  end
end



-- define a function in the module table.
-- Only functions defined in `module` will be exported to
-- code that imports this module.
-- The suggested convention for making modules that update
-- the config is for them to export an `apply_to_config`
-- function that accepts the config object, like this:
function module.apply_to_config(config)
  config.color_scheme = scheme_for_appearance(get_appearance())
  -- config.color_scheme = 'SeaShells'
end

-- return our module table
return module
