local wezterm = require 'wezterm'

local module = {}

function module.apply_to_config(config)
    config.use_dead_keys = false

    config.mouse_bindings = {
        -- Ctrl-click will open the link under the mouse cursor
        {
            event = { Up = { streak = 1, button = 'Left' } },
            mods = 'CTRL',
            action = wezterm.action.OpenLinkAtMouseCursor,
        },
    }

    config.keys = {
        { key = 's', mods = 'ALT', action = wezterm.action.ShowLauncher },
    }
end

-- return our module table
return module
